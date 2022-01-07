; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdunlinkfork.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdunlinkfork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAIN_FORKNUM = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not truncate file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32)* @mdunlinkfork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdunlinkfork(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i8* @relpath(i32 %13, i64 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MAIN_FORKNUM, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @RelFileNodeBackendIsTemp(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %22, %18, %3
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @RelFileNodeBackendIsTemp(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @register_forget_request(i32 %31, i64 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @unlink(i8* %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i32, i32* @errno, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @WARNING, align 4
  %46 = call i32 (...) @errcode_for_file_access()
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = call i32 @ereport(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %40, %34
  br label %84

51:                                               ; preds = %22
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @O_RDWR, align 4
  %54 = load i32, i32* @PG_BINARY, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @OpenTransientFile(i8* %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ftruncate(i32 %60, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @CloseTransientFile(i32 %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* @errno, align 4
  br label %67

66:                                               ; preds = %51
  store i32 -1, i32* %8, align 4
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* @errno, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @WARNING, align 4
  %76 = call i32 (...) @errcode_for_file_access()
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = call i32 @ereport(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %70, %67
  %81 = load i32, i32* %4, align 4
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @register_unlink_segment(i32 %81, i64 %82, i32 0)
  br label %84

84:                                               ; preds = %80, %50
  %85 = load i32, i32* %8, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %128

87:                                               ; preds = %84
  %88 = load i8*, i8** %7, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = add nsw i64 %89, 12
  %91 = call i64 @palloc(i64 %90)
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** %11, align 8
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %122, %87
  %94 = load i32, i32* %4, align 4
  %95 = call i64 @RelFileNodeBackendIsTemp(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %4, align 4
  %99 = load i64, i64* %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @register_forget_request(i32 %98, i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %93
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @sprintf(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %104, i32 %105)
  %107 = load i8*, i8** %11, align 8
  %108 = call i64 @unlink(i8* %107)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load i32, i32* @errno, align 4
  %112 = load i32, i32* @ENOENT, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32, i32* @WARNING, align 4
  %116 = call i32 (...) @errcode_for_file_access()
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %117)
  %119 = call i32 @ereport(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %110
  br label %125

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %93

125:                                              ; preds = %120
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @pfree(i8* %126)
  br label %128

128:                                              ; preds = %125, %84
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @pfree(i8* %129)
  ret void
}

declare dso_local i8* @relpath(i32, i64) #1

declare dso_local i64 @RelFileNodeBackendIsTemp(i32) #1

declare dso_local i32 @register_forget_request(i32, i64, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @OpenTransientFile(i8*, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @CloseTransientFile(i32) #1

declare dso_local i32 @register_unlink_segment(i32, i64, i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
