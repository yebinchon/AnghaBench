; ModuleID = '/home/carl/AnghaBench/meltdown/extr_reliability.c_main.c'
source_filename = "/home/carl/AnghaBench/meltdown/extr_reliability.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@DEFAULT_PHYSICAL_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"\1B[33;1m[+]\1B[0m Setting physical offset to 0x%zx\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"\1B[31;1m[!]\1B[0m Program requires root privileges (or read access to /proc/<pid>/pagemap)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"\0D\1B[34;1m[%c]\1B[0m Success rate: %.2f%% (read %zd values)    \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/-\\|\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4096 x i64], align 16
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i64, i64* @DEFAULT_PHYSICAL_OFFSET, align 8
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i8 88, i8* %10, align 1
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strtoull(i8* %25, i32* null, i32 0)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %22, %2
  %30 = call i32 @libkdump_enable_debug(i32 0)
  %31 = call { i64, i64 } (...) @libkdump_get_autoconfig()
  %32 = bitcast %struct.TYPE_4__* %11 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = extractvalue { i64, i64 } %31, 0
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = extractvalue { i64, i64 } %31, 1
  store i64 %36, i64* %35, align 8
  %37 = bitcast %struct.TYPE_4__* %7 to i8*
  %38 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 10, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 2, i32* %40, align 4
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i64 %41, i64* %42, align 8
  %43 = bitcast %struct.TYPE_4__* %7 to { i64, i64 }*
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %43, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @libkdump_init(i64 %45, i64 %47)
  %49 = getelementptr inbounds [4096 x i64], [4096 x i64]* %6, i64 0, i64 0
  %50 = getelementptr inbounds i64, i64* %49, i64 2048
  %51 = ptrtoint i64* %50 to i64
  store i64 %51, i64* %12, align 8
  %52 = load i8, i8* %10, align 1
  %53 = load i64, i64* %12, align 8
  %54 = inttoptr i64 %53 to i8*
  store i8 %52, i8* %54, align 1
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @libkdump_virt_to_phys(i64 %55)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %29
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @exit(i32 1) #4
  unreachable

62:                                               ; preds = %29
  %63 = call i32 @time(i32* null)
  %64 = call i32 @srand(i32 %63)
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i64 @libkdump_phys_to_virt(i64 %65)
  store i64 %66, i64* %17, align 8
  br label %67

67:                                               ; preds = %62, %91, %97
  %68 = load i8, i8* %10, align 1
  %69 = load i64, i64* %12, align 8
  %70 = inttoptr i64 %69 to i8*
  store volatile i8 %68, i8* %70, align 1
  %71 = load i64, i64* %17, align 8
  %72 = call i32 @libkdump_read(i64 %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i8, i8* %10, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %14, align 8
  br label %97

80:                                               ; preds = %67
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %15, align 8
  br label %96

86:                                               ; preds = %80
  %87 = load i64, i64* %16, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %16, align 8
  %90 = icmp ult i64 %89, 1000
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %67

92:                                               ; preds = %86
  store i64 0, i64* %16, align 8
  %93 = load i64, i64* %15, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %15, align 8
  br label %95

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %96, %77
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = sdiv i32 %98, 100
  %101 = srem i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.3, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = load i64, i64* %14, align 8
  %107 = uitofp i64 %106 to double
  %108 = fmul double 1.000000e+02, %107
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %15, align 8
  %111 = add i64 %109, %110
  %112 = uitofp i64 %111 to double
  %113 = fdiv double %108, %112
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %15, align 8
  %116 = add i64 %114, %115
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %105, double %113, i64 %116)
  %118 = load i32, i32* @stdout, align 4
  %119 = call i32 @fflush(i32 %118)
  %120 = call i32 (...) @rand()
  %121 = srem i32 %120, 255
  %122 = add nsw i32 %121, 1
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %10, align 1
  br label %67
}

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @libkdump_enable_debug(i32) #1

declare dso_local { i64, i64 } @libkdump_get_autoconfig(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @libkdump_init(i64, i64) #1

declare dso_local i64 @libkdump_virt_to_phys(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @libkdump_phys_to_virt(i64) #1

declare dso_local i32 @libkdump_read(i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
