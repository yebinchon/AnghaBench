; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_winedbg.c_regState.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_winedbg.c_regState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winedbg_x86_32 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"info reg\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"EIP:\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"EIP:%08x ESP:%08x EBP:%08x EFLAGS:%08x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"EAX:\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"EAX:%08x EBX:%08x ECX:%08x EDX:%08x\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ESI:\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ESI:%08x EDI:%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.winedbg_x86_32*)* @regState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regState(%struct.winedbg_x86_32* noalias sret %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = bitcast %struct.winedbg_x86_32* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 88, i1 false)
  %15 = call i8* @runcmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i8*, i8*, i8**, i8**, ...) @sscanf(i8* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8** %4, i8** %5, i8** %6, i8** %7)
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 9
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 8
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 7
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 6
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %23
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 (i8*, i8*, i8**, i8**, ...) @sscanf(i8* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8** %8, i8** %9, i8** %10, i8** %11)
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 5
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 3
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = call i8* @strstr(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %50, i8** %3, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 (i8*, i8*, i8**, i8**, ...) @sscanf(i8* %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8** %12, i8** %13)
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds %struct.winedbg_x86_32, %struct.winedbg_x86_32* %0, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  br label %60

60:                                               ; preds = %53, %38
  br label %61

61:                                               ; preds = %60, %23
  br label %62

62:                                               ; preds = %61, %18
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %62, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @runcmd(i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, ...) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
