; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_kernel.c_kuhl_m_kernel_processToken.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_kernel.c_kuhl_m_kernel_processToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i32] [i32 102, i32 114, i32 111, i32 109, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 116, i32 111, i32 0], align 4
@.str.2 = private unnamed_addr constant [37 x i32] [i32 84, i32 111, i32 107, i32 101, i32 110, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 32, i32 37, i32 117, i32 32, i32 116, i32 111, i32 32, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [34 x i32] [i32 32, i32 42, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 48, i32 32, i32 119, i32 105, i32 108, i32 108, i32 32, i32 116, i32 97, i32 107, i32 101, i32 32, i32 83, i32 89, i32 83, i32 84, i32 69, i32 77, i32 32, i32 116, i32 111, i32 107, i32 101, i32 110, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [52 x i32] [i32 32, i32 42, i32 32, i32 116, i32 111, i32 32, i32 48, i32 32, i32 119, i32 105, i32 108, i32 108, i32 32, i32 116, i32 97, i32 107, i32 101, i32 32, i32 97, i32 108, i32 108, i32 32, i32 39, i32 99, i32 109, i32 100, i32 39, i32 32, i32 97, i32 110, i32 100, i32 32, i32 39, i32 109, i32 105, i32 109, i32 105, i32 107, i32 97, i32 116, i32 122, i32 39, i32 32, i32 112, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 10, i32 0], align 4
@IOCTL_MIMIDRV_PROCESS_TOKEN = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_kernel_processToken(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %8 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* %3, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = call i64 @kull_m_string_args_byName(i32 %9, i32** %10, i8* bitcast ([5 x i32]* @.str to i8*), i32* %6, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @wcstoul(i32 %14, i32* null, i32 0)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32**, i32*** %4, align 8
  %20 = call i64 @kull_m_string_args_byName(i32 %18, i32** %19, i8* bitcast ([3 x i32]* @.str.1 to i8*), i32* %7, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @wcstoul(i32 %23, i32* null, i32 0)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.2 to i8*), i8* %28, i8* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.3 to i8*))
  br label %37

37:                                               ; preds = %35, %26
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @kprintf(i8* bitcast ([52 x i32]* @.str.4 to i8*))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* @IOCTL_MIMIDRV_PROCESS_TOKEN, align 4
  %45 = call i32 @kull_m_kernel_mimidrv_simple_output(i32 %44, %struct.TYPE_3__* %5, i32 24)
  %46 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #2

declare dso_local i8* @wcstoul(i32, i32*, i32) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @kull_m_kernel_mimidrv_simple_output(i32, %struct.TYPE_3__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
