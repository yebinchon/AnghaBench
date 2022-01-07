; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_save_scope.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_save_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i64, i64, i64, i64, %struct.d_print_template*, %struct.d_print_template*, %struct.d_saved_scope* }
%struct.d_print_template = type { %struct.d_print_template*, i32 }
%struct.d_saved_scope = type { %struct.d_print_template*, %struct.demangle_component* }
%struct.demangle_component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, %struct.demangle_component*)* @d_save_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_save_scope(%struct.d_print_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.d_print_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.d_saved_scope*, align 8
  %6 = alloca %struct.d_print_template*, align 8
  %7 = alloca %struct.d_print_template**, align 8
  %8 = alloca %struct.d_print_template*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %4, align 8
  %9 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %10 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %13 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %18 = call i32 @d_print_error(%struct.d_print_info* %17)
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %21 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %20, i32 0, i32 6
  %22 = load %struct.d_saved_scope*, %struct.d_saved_scope** %21, align 8
  %23 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %24 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.d_saved_scope, %struct.d_saved_scope* %22, i64 %25
  store %struct.d_saved_scope* %26, %struct.d_saved_scope** %5, align 8
  %27 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %28 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %32 = load %struct.d_saved_scope*, %struct.d_saved_scope** %5, align 8
  %33 = getelementptr inbounds %struct.d_saved_scope, %struct.d_saved_scope* %32, i32 0, i32 1
  store %struct.demangle_component* %31, %struct.demangle_component** %33, align 8
  %34 = load %struct.d_saved_scope*, %struct.d_saved_scope** %5, align 8
  %35 = getelementptr inbounds %struct.d_saved_scope, %struct.d_saved_scope* %34, i32 0, i32 0
  store %struct.d_print_template** %35, %struct.d_print_template*** %7, align 8
  %36 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %37 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %36, i32 0, i32 5
  %38 = load %struct.d_print_template*, %struct.d_print_template** %37, align 8
  store %struct.d_print_template* %38, %struct.d_print_template** %6, align 8
  br label %39

39:                                               ; preds = %74, %19
  %40 = load %struct.d_print_template*, %struct.d_print_template** %6, align 8
  %41 = icmp ne %struct.d_print_template* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %44 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %47 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %52 = call i32 @d_print_error(%struct.d_print_info* %51)
  br label %80

53:                                               ; preds = %42
  %54 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %55 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %54, i32 0, i32 4
  %56 = load %struct.d_print_template*, %struct.d_print_template** %55, align 8
  %57 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %58 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %56, i64 %59
  store %struct.d_print_template* %60, %struct.d_print_template** %8, align 8
  %61 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %62 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.d_print_template*, %struct.d_print_template** %6, align 8
  %66 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.d_print_template*, %struct.d_print_template** %8, align 8
  %69 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.d_print_template*, %struct.d_print_template** %8, align 8
  %71 = load %struct.d_print_template**, %struct.d_print_template*** %7, align 8
  store %struct.d_print_template* %70, %struct.d_print_template** %71, align 8
  %72 = load %struct.d_print_template*, %struct.d_print_template** %8, align 8
  %73 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %72, i32 0, i32 0
  store %struct.d_print_template** %73, %struct.d_print_template*** %7, align 8
  br label %74

74:                                               ; preds = %53
  %75 = load %struct.d_print_template*, %struct.d_print_template** %6, align 8
  %76 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %75, i32 0, i32 0
  %77 = load %struct.d_print_template*, %struct.d_print_template** %76, align 8
  store %struct.d_print_template* %77, %struct.d_print_template** %6, align 8
  br label %39

78:                                               ; preds = %39
  %79 = load %struct.d_print_template**, %struct.d_print_template*** %7, align 8
  store %struct.d_print_template* null, %struct.d_print_template** %79, align 8
  br label %80

80:                                               ; preds = %78, %50, %16
  ret void
}

declare dso_local i32 @d_print_error(%struct.d_print_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
