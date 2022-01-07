; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/filebrowser/extr_filebrowser.c__tmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/filebrowser/extr_filebrowser.c__tmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32 }

@SH_EXPLORER_CMDLINE_FLAG_SEPARATE = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %7 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  %8 = call i64 @SHExplorerParseCmdLine(%struct.TYPE_4__* %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @SH_EXPLORER_CMDLINE_FLAG_SEPARATE, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @SW_SHOWNORMAL, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = call i32 @SHCreateFromDesktop(%struct.TYPE_4__* %6)
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @SHFree(i64 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ILFree(i64 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ILFree(i64 %40)
  br label %42

42:                                               ; preds = %38, %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @SHExplorerParseCmdLine(%struct.TYPE_4__*) #2

declare dso_local i32 @SHCreateFromDesktop(%struct.TYPE_4__*) #2

declare dso_local i32 @SHFree(i64) #2

declare dso_local i32 @ILFree(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
