; ModuleID = '/home/carl/AnghaBench/meltdown/extr_physical_reader.c_main.c'
source_filename = "/home/carl/AnghaBench/meltdown/extr_physical_reader.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Usage: %s <physical address> [<direct physical map>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\1B[32;1m[+]\1B[0m Physical address       : \1B[33;1m0x%zx\1B[0m\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\1B[32;1m[+]\1B[0m Physical offset        : \1B[33;1m0x%zx\1B[0m\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"\1B[32;1m[+]\1B[0m Reading virtual address: \1B[33;1m0x%zx\1B[0m\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %16)
  ret i32 0

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strtoull(i8* %21, i32* null, i32 0)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = call i32 (...) @libkdump_get_autoconfig()
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = bitcast %struct.TYPE_4__* %7 to i8*
  %27 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @strtoull(i8* %33, i32* null, i32 0)
  %35 = ptrtoint i8* %34 to i32
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %18
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @libkdump_init(i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @libkdump_phys_to_virt(i64 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %37, %50
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @libkdump_read(i64 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 @fflush(i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %50
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @libkdump_get_autoconfig(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @libkdump_init(i32) #1

declare dso_local i64 @libkdump_phys_to_virt(i64) #1

declare dso_local i32 @libkdump_read(i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
