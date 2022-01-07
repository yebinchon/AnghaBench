; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_dump.c_create_lv_sym_table.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_dump.c_create_lv_sym_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i64**, i32*)* @create_lv_sym_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_lv_sym_table(i32* %0, %struct.TYPE_5__* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64**, i64*** %7, align 8
  %12 = load i64*, i64** %11, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @mrb_malloc(i32* %15, i32 8)
  %17 = inttoptr i64 %16 to i64*
  %18 = load i64**, i64*** %7, align 8
  store i64* %17, i64** %18, align 8
  br label %19

19:                                               ; preds = %14, %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %71, %19
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %71

39:                                               ; preds = %27
  %40 = load i64**, i64*** %7, align 8
  %41 = load i64*, i64** %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @find_filename_index(i64* %41, i32 %43, i64 %44)
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %71

48:                                               ; preds = %39
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i64**, i64*** %7, align 8
  %54 = load i64*, i64** %53, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 8, %57
  %59 = trunc i64 %58 to i32
  %60 = call i64 @mrb_realloc(i32* %52, i64* %54, i32 %59)
  %61 = inttoptr i64 %60 to i64*
  %62 = load i64**, i64*** %7, align 8
  store i64* %61, i64** %62, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64**, i64*** %7, align 8
  %65 = load i64*, i64** %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %65, i64 %69
  store i64 %63, i64* %70, align 8
  br label %71

71:                                               ; preds = %48, %47, %38
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %20

74:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %92, %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %85, i64 %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i64**, i64*** %7, align 8
  %91 = load i32*, i32** %8, align 8
  call void @create_lv_sym_table(i32* %82, %struct.TYPE_5__* %89, i64** %90, i32* %91)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %75

95:                                               ; preds = %75
  ret void
}

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i32 @find_filename_index(i64*, i32, i64) #1

declare dso_local i64 @mrb_realloc(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
