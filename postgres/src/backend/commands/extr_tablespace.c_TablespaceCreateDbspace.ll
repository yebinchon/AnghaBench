; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_TablespaceCreateDbspace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_TablespaceCreateDbspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@TablespaceCreateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not create directory \22%s\22: %m\00", align 1
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"could not stat directory \22%s\22: %m\00", align 1
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\22%s\22 exists but is not a directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TablespaceCreateDbspace(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %141

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @OidIsValid(i64 %15)
  %17 = call i32 @Assert(i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @OidIsValid(i64 %18)
  %20 = call i32 @Assert(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i8* @GetDatabasePath(i64 %21, i64 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @stat(i8* %24, %struct.stat* %7)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %125

27:                                               ; preds = %14
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %118

31:                                               ; preds = %27
  %32 = load i32, i32* @TablespaceCreateLock, align 4
  %33 = load i32, i32* @LW_EXCLUSIVE, align 4
  %34 = call i32 @LWLockAcquire(i32 %32, i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @stat(i8* %35, %struct.stat* %7)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @S_ISDIR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %115

44:                                               ; preds = %38, %31
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @MakePGDirectory(i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %44
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOENT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* @ERROR, align 4
  %57 = call i32 (...) @errcode_for_file_access()
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = call i32 @ereport(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @pstrdup(i8* %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @get_parent_directory(i8* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @get_parent_directory(i8* %66)
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @MakePGDirectory(i8* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load i64, i64* @errno, align 8
  %73 = load i64, i64* @EEXIST, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @ERROR, align 4
  %77 = call i32 (...) @errcode_for_file_access()
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = call i32 @ereport(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %71, %61
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @pfree(i8* %82)
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @pstrdup(i8* %84)
  store i8* %85, i8** %9, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @get_parent_directory(i8* %86)
  %88 = load i8*, i8** %9, align 8
  %89 = call i64 @MakePGDirectory(i8* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @EEXIST, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @ERROR, align 4
  %97 = call i32 (...) @errcode_for_file_access()
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %98)
  %100 = call i32 @ereport(i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %91, %81
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @pfree(i8* %102)
  %104 = load i8*, i8** %8, align 8
  %105 = call i64 @MakePGDirectory(i8* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* @ERROR, align 4
  %109 = call i32 (...) @errcode_for_file_access()
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %110)
  %112 = call i32 @ereport(i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %107, %101
  br label %114

114:                                              ; preds = %113, %44
  br label %115

115:                                              ; preds = %114, %43
  %116 = load i32, i32* @TablespaceCreateLock, align 4
  %117 = call i32 @LWLockRelease(i32 %116)
  br label %124

118:                                              ; preds = %27
  %119 = load i32, i32* @ERROR, align 4
  %120 = call i32 (...) @errcode_for_file_access()
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  %123 = call i32 @ereport(i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %115
  br label %138

125:                                              ; preds = %14
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @S_ISDIR(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* @ERROR, align 4
  %132 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %133 = call i32 @errcode(i32 %132)
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %134)
  %136 = call i32 @ereport(i32 %131, i32 %135)
  br label %137

137:                                              ; preds = %130, %125
  br label %138

138:                                              ; preds = %137, %124
  %139 = load i8*, i8** %8, align 8
  %140 = call i32 @pfree(i8* %139)
  br label %141

141:                                              ; preds = %138, %13
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i8* @GetDatabasePath(i64, i64) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @MakePGDirectory(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @get_parent_directory(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @errcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
