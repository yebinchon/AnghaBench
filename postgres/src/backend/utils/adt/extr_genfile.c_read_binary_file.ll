; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_genfile.c_read_binary_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_genfile.c_read_binary_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@MaxAllocSize = common dso_local global i64 0, align 8
@VARHDRSZ = common dso_local global i64 0, align 8
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"requested length too large\00", align 1
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for reading: %m\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"could not seek in file \22%s\22: %m\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64, i64, i32)* @read_binary_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_binary_file(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.stat, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %8, align 8
  br label %46

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @stat(i8* %23, %struct.stat* %13)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ENOENT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32* null, i32** %5, align 8
  br label %128

34:                                               ; preds = %29, %26
  %35 = load i32, i32* @ERROR, align 4
  %36 = call i32 (...) @errcode_for_file_access()
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %22
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %41, %19
  br label %47

47:                                               ; preds = %46, %4
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @MaxAllocSize, align 8
  %50 = load i64, i64* @VARHDRSZ, align 8
  %51 = sub nsw i64 %49, %50
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @ereport(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @PG_BINARY_R, align 4
  %62 = call i32* @AllocateFile(i8* %60, i32 %61)
  store i32* %62, i32** %12, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @ENOENT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32* null, i32** %5, align 8
  br label %128

72:                                               ; preds = %67, %64
  %73 = load i32, i32* @ERROR, align 4
  %74 = call i32 (...) @errcode_for_file_access()
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  %77 = call i32 @ereport(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32*, i32** %12, align 8
  %81 = load i64, i64* %7, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* %7, align 8
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @SEEK_SET, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @SEEK_END, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i64 @fseeko(i32* %80, i32 %82, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* @ERROR, align 4
  %95 = call i32 (...) @errcode_for_file_access()
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = call i32 @ereport(i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %93, %89
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @VARHDRSZ, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i64 @palloc(i64 %102)
  %104 = inttoptr i64 %103 to i32*
  store i32* %104, i32** %10, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @VARDATA(i32* %105)
  %107 = load i64, i64* %8, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i64 @fread(i32 %106, i32 1, i64 %107, i32* %108)
  store i64 %109, i64* %11, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i64 @ferror(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %99
  %114 = load i32, i32* @ERROR, align 4
  %115 = call i32 (...) @errcode_for_file_access()
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  %118 = call i32 @ereport(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %99
  %120 = load i32*, i32** %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* @VARHDRSZ, align 8
  %123 = add i64 %121, %122
  %124 = call i32 @SET_VARSIZE(i32* %120, i64 %123)
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @FreeFile(i32* %125)
  %127 = load i32*, i32** %10, align 8
  store i32* %127, i32** %5, align 8
  br label %128

128:                                              ; preds = %119, %71, %33
  %129 = load i32*, i32** %5, align 8
  ret i32* %129
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32* @AllocateFile(i8*, i32) #1

declare dso_local i64 @fseeko(i32*, i32, i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @fread(i32, i32, i64, i32*) #1

declare dso_local i32 @VARDATA(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i32 @FreeFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
