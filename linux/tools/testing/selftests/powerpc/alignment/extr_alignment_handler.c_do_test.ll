; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"\09Doing %s:\09\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/dev/fb0\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't open /dev/fb0 now?\00", align 1
@bufsize = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"FAILED: Got signal\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"FAILED: Wrong Data\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"PASSED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_test(i8* %0, void (i8*, i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*, i8*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store void (i8*, i8*)* %1, void (i8*, i8*)** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %157

24:                                               ; preds = %2
  %25 = load i32, i32* @bufsize, align 4
  %26 = load i32, i32* @PROT_WRITE, align 4
  %27 = load i32, i32* @MAP_SHARED, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @mmap(i32* null, i32 %25, i32 %26, i32 %27, i32 %28, i32 0)
  store i8* %29, i8** %13, align 8
  %30 = load i32, i32* @bufsize, align 4
  %31 = load i32, i32* @PROT_WRITE, align 4
  %32 = load i32, i32* @MAP_SHARED, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @bufsize, align 4
  %35 = call i8* @mmap(i32* null, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i8*, i8** @MAP_FAILED, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %24
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** @MAP_FAILED, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39, %24
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 @SKIP_IF(i32 1)
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @bufsize, align 4
  %49 = load i32, i32* @bufsize, align 4
  %50 = call i32 @posix_memalign(i8** %11, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %157

56:                                               ; preds = %47
  %57 = load i32, i32* @bufsize, align 4
  %58 = load i32, i32* @bufsize, align 4
  %59 = call i32 @posix_memalign(i8** %12, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %157

67:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  store i32 1, i32* %6, align 4
  br label %68

68:                                               ; preds = %134, %67
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 16
  br i1 %70, label %71, label %137

71:                                               ; preds = %68
  store i32 16, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @preload_data(i8* %72, i32 %73, i32 %74)
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @preload_data(i8* %76, i32 %77, i32 %78)
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* @bufsize, align 4
  %83 = call i32 @memcpy(i8* %80, i8* %81, i32 %82)
  %84 = load i8*, i8** %14, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* @bufsize, align 4
  %87 = call i32 @memcpy(i8* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @test_memcmp(i8* %88, i8* %89, i32 %90, i32 %91, i8* %92)
  %94 = load i8*, i8** %14, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8
  %99 = call i32 @test_memcpy(i8* %94, i8* %95, i32 %96, i32 %97, void (i8*, i8*)* %98)
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load void (i8*, i8*)*, void (i8*, i8*)** %5, align 8
  %107 = call i32 @test_memcpy(i8* %102, i8* %103, i32 %104, i32 %105, void (i8*, i8*)* %106)
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %71
  %113 = load i32, i32* @debug, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %137

117:                                              ; preds = %112, %71
  %118 = load i8*, i8** %12, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @test_memcmp(i8* %118, i8* %119, i32 %120, i32 %121, i8* %122)
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load i32, i32* @debug, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %137

133:                                              ; preds = %128, %117
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %68

137:                                              ; preds = %131, %115, %68
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %137
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i8*, i8** %13, align 8
  %145 = load i32, i32* @bufsize, align 4
  %146 = call i32 @munmap(i8* %144, i32 %145)
  %147 = load i8*, i8** %14, align 8
  %148 = load i32, i32* @bufsize, align 4
  %149 = call i32 @munmap(i8* %147, i32 %148)
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @free(i8* %152)
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @close(i32 %154)
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %142, %62, %53, %21
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @posix_memalign(i8**, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @preload_data(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @test_memcmp(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @test_memcpy(i8*, i8*, i32, i32, void (i8*, i8*)*) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
