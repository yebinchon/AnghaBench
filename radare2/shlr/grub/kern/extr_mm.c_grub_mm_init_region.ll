; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_mm.c_grub_mm_init_region.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_mm.c_grub_mm_init_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@GRUB_MM_ALIGN = common dso_local global i32 0, align 4
@GRUB_MM_FREE_MAGIC = common dso_local global i32 0, align 4
@GRUB_MM_ALIGN_LOG2 = common dso_local global i32 0, align 4
@base = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grub_mm_init_region(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i32, i32* @GRUB_MM_ALIGN, align 4
  %12 = call i64 @ALIGN_UP(i64 %10, i32 %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = bitcast %struct.TYPE_4__* %14 to i8*
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %15 to i64
  %18 = ptrtoint i8* %16 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 32
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @GRUB_MM_ALIGN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %87

29:                                               ; preds = %2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = bitcast %struct.TYPE_4__* %30 to i8*
  %32 = load i32, i32* @GRUB_MM_ALIGN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = bitcast i8* %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %38, align 8
  %39 = load i32, i32* @GRUB_MM_FREE_MAGIC, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @GRUB_MM_ALIGN_LOG2, align 4
  %44 = ashr i32 %42, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = ptrtoint %struct.TYPE_5__* %50 to i64
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GRUB_MM_ALIGN_LOG2, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  store %struct.TYPE_4__** @base, %struct.TYPE_4__*** %7, align 8
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %8, align 8
  br label %63

63:                                               ; preds = %76, %29
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %81

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store %struct.TYPE_4__** %78, %struct.TYPE_4__*** %7, align 8
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %8, align 8
  br label %63

81:                                               ; preds = %74, %63
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %83, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %86, align 8
  br label %87

87:                                               ; preds = %81, %28
  ret void
}

declare dso_local i64 @ALIGN_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
