; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_free.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_mdmp_obj = type { i32*, %struct.r_bin_mdmp_obj*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { %struct.r_bin_mdmp_obj* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r_bin_mdmp_free(%struct.r_bin_mdmp_obj* %0) #0 {
  %2 = alloca %struct.r_bin_mdmp_obj*, align 8
  store %struct.r_bin_mdmp_obj* %0, %struct.r_bin_mdmp_obj** %2, align 8
  %3 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %4 = icmp ne %struct.r_bin_mdmp_obj* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %114

6:                                                ; preds = %1
  %7 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %8 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 16
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @r_list_free(i32 %10)
  %12 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %13 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @r_list_free(i32 %15)
  %17 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %18 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 14
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @r_list_free(i32 %21)
  %23 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %24 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @r_list_free(i32 %26)
  %28 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %29 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @r_list_free(i32 %31)
  %33 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %34 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @r_list_free(i32 %36)
  %38 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %39 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @r_list_free(i32 %41)
  %43 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %44 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @r_list_free(i32 %46)
  %48 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %49 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @r_list_free(i32 %51)
  %53 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %54 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @r_list_free(i32 %56)
  %58 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %59 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  %61 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %60, align 8
  %62 = call i32 @free(%struct.r_bin_mdmp_obj* %61)
  %63 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %64 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %65, align 8
  %67 = call i32 @free(%struct.r_bin_mdmp_obj* %66)
  %68 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %69 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %70, align 8
  %72 = call i32 @free(%struct.r_bin_mdmp_obj* %71)
  %73 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %74 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %75, align 8
  %77 = call i32 @free(%struct.r_bin_mdmp_obj* %76)
  %78 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %79 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %80, align 8
  %82 = call i32 @free(%struct.r_bin_mdmp_obj* %81)
  %83 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %84 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %85, align 8
  %87 = call i32 @free(%struct.r_bin_mdmp_obj* %86)
  %88 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %89 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %91, align 8
  %93 = call i32 @free(%struct.r_bin_mdmp_obj* %92)
  %94 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %95 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @r_list_free(i32 %96)
  %98 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %99 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @r_list_free(i32 %100)
  %102 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %103 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @r_buf_free(i32* %104)
  %106 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %107 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %106, i32 0, i32 1
  %108 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %107, align 8
  %109 = call i32 @free(%struct.r_bin_mdmp_obj* %108)
  %110 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %111 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  %112 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %2, align 8
  %113 = call i32 @free(%struct.r_bin_mdmp_obj* %112)
  br label %114

114:                                              ; preds = %6, %5
  ret void
}

declare dso_local i32 @r_list_free(i32) #1

declare dso_local i32 @free(%struct.r_bin_mdmp_obj*) #1

declare dso_local i32 @r_buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
