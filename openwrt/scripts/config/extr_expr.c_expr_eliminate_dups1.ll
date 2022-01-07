; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_expr.c_expr_eliminate_dups1.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_expr.c_expr_eliminate_dups1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr* }
%struct.TYPE_3__ = type { %struct.expr* }

@symbol_no = common dso_local global i32 0, align 4
@trans_count = common dso_local global i32 0, align 4
@symbol_yes = common dso_local global i32 0, align 4
@e1 = common dso_local global %struct.expr* null, align 8
@e2 = common dso_local global %struct.expr* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.expr**, %struct.expr**)* @expr_eliminate_dups1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_eliminate_dups1(i32 %0, %struct.expr** %1, %struct.expr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.expr**, align 8
  %6 = alloca %struct.expr**, align 8
  %7 = alloca %struct.expr*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.expr** %1, %struct.expr*** %5, align 8
  store %struct.expr** %2, %struct.expr*** %6, align 8
  %8 = load %struct.expr**, %struct.expr*** %5, align 8
  %9 = load %struct.expr*, %struct.expr** %8, align 8
  %10 = getelementptr inbounds %struct.expr, %struct.expr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.expr**, %struct.expr*** %5, align 8
  %17 = load %struct.expr*, %struct.expr** %16, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.expr**, %struct.expr*** %6, align 8
  call void @expr_eliminate_dups1(i32 %15, %struct.expr** %19, %struct.expr** %20)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.expr**, %struct.expr*** %5, align 8
  %23 = load %struct.expr*, %struct.expr** %22, align 8
  %24 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.expr**, %struct.expr*** %6, align 8
  call void @expr_eliminate_dups1(i32 %21, %struct.expr** %25, %struct.expr** %26)
  br label %114

27:                                               ; preds = %3
  %28 = load %struct.expr**, %struct.expr*** %6, align 8
  %29 = load %struct.expr*, %struct.expr** %28, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.expr**, %struct.expr*** %5, align 8
  %37 = load %struct.expr**, %struct.expr*** %6, align 8
  %38 = load %struct.expr*, %struct.expr** %37, align 8
  %39 = getelementptr inbounds %struct.expr, %struct.expr* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  call void @expr_eliminate_dups1(i32 %35, %struct.expr** %36, %struct.expr** %40)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.expr**, %struct.expr*** %5, align 8
  %43 = load %struct.expr**, %struct.expr*** %6, align 8
  %44 = load %struct.expr*, %struct.expr** %43, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  call void @expr_eliminate_dups1(i32 %41, %struct.expr** %42, %struct.expr** %46)
  br label %114

47:                                               ; preds = %27
  %48 = load %struct.expr**, %struct.expr*** %5, align 8
  %49 = load %struct.expr*, %struct.expr** %48, align 8
  %50 = load %struct.expr**, %struct.expr*** %6, align 8
  %51 = load %struct.expr*, %struct.expr** %50, align 8
  %52 = icmp eq %struct.expr* %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %114

54:                                               ; preds = %47
  %55 = load %struct.expr**, %struct.expr*** %5, align 8
  %56 = load %struct.expr*, %struct.expr** %55, align 8
  %57 = getelementptr inbounds %struct.expr, %struct.expr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %66 [
    i32 128, label %59
    i32 129, label %59
  ]

59:                                               ; preds = %54, %54
  %60 = load %struct.expr**, %struct.expr*** %5, align 8
  %61 = load %struct.expr*, %struct.expr** %60, align 8
  %62 = getelementptr inbounds %struct.expr, %struct.expr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.expr**, %struct.expr*** %5, align 8
  %65 = load %struct.expr**, %struct.expr*** %5, align 8
  call void @expr_eliminate_dups1(i32 %63, %struct.expr** %64, %struct.expr** %65)
  br label %66

66:                                               ; preds = %54, %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  switch i32 %68, label %113 [
    i32 128, label %69
    i32 129, label %91
  ]

69:                                               ; preds = %67
  %70 = load %struct.expr**, %struct.expr*** %5, align 8
  %71 = load %struct.expr*, %struct.expr** %70, align 8
  %72 = load %struct.expr**, %struct.expr*** %6, align 8
  %73 = load %struct.expr*, %struct.expr** %72, align 8
  %74 = call %struct.expr* @expr_join_or(%struct.expr* %71, %struct.expr* %73)
  store %struct.expr* %74, %struct.expr** %7, align 8
  %75 = load %struct.expr*, %struct.expr** %7, align 8
  %76 = icmp ne %struct.expr* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.expr**, %struct.expr*** %5, align 8
  %79 = load %struct.expr*, %struct.expr** %78, align 8
  %80 = call i32 @expr_free(%struct.expr* %79)
  %81 = load %struct.expr**, %struct.expr*** %6, align 8
  %82 = load %struct.expr*, %struct.expr** %81, align 8
  %83 = call i32 @expr_free(%struct.expr* %82)
  %84 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_no)
  %85 = load %struct.expr**, %struct.expr*** %5, align 8
  store %struct.expr* %84, %struct.expr** %85, align 8
  %86 = load %struct.expr*, %struct.expr** %7, align 8
  %87 = load %struct.expr**, %struct.expr*** %6, align 8
  store %struct.expr* %86, %struct.expr** %87, align 8
  %88 = load i32, i32* @trans_count, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @trans_count, align 4
  br label %90

90:                                               ; preds = %77, %69
  br label %114

91:                                               ; preds = %67
  %92 = load %struct.expr**, %struct.expr*** %5, align 8
  %93 = load %struct.expr*, %struct.expr** %92, align 8
  %94 = load %struct.expr**, %struct.expr*** %6, align 8
  %95 = load %struct.expr*, %struct.expr** %94, align 8
  %96 = call %struct.expr* @expr_join_and(%struct.expr* %93, %struct.expr* %95)
  store %struct.expr* %96, %struct.expr** %7, align 8
  %97 = load %struct.expr*, %struct.expr** %7, align 8
  %98 = icmp ne %struct.expr* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %91
  %100 = load %struct.expr**, %struct.expr*** %5, align 8
  %101 = load %struct.expr*, %struct.expr** %100, align 8
  %102 = call i32 @expr_free(%struct.expr* %101)
  %103 = load %struct.expr**, %struct.expr*** %6, align 8
  %104 = load %struct.expr*, %struct.expr** %103, align 8
  %105 = call i32 @expr_free(%struct.expr* %104)
  %106 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_yes)
  %107 = load %struct.expr**, %struct.expr*** %5, align 8
  store %struct.expr* %106, %struct.expr** %107, align 8
  %108 = load %struct.expr*, %struct.expr** %7, align 8
  %109 = load %struct.expr**, %struct.expr*** %6, align 8
  store %struct.expr* %108, %struct.expr** %109, align 8
  %110 = load i32, i32* @trans_count, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @trans_count, align 4
  br label %112

112:                                              ; preds = %99, %91
  br label %114

113:                                              ; preds = %67
  br label %114

114:                                              ; preds = %14, %34, %53, %113, %112, %90
  ret void
}

declare dso_local %struct.expr* @expr_join_or(%struct.expr*, %struct.expr*) #1

declare dso_local i32 @expr_free(%struct.expr*) #1

declare dso_local %struct.expr* @expr_alloc_symbol(i32*) #1

declare dso_local %struct.expr* @expr_join_and(%struct.expr*, %struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
