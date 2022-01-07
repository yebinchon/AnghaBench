; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_compute_occ_strings.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_compute_occ_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gc_arena = type { i32 }

@D_SHOW_OCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Local Options String (VER=%s): '%s'\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Expected Remote Options String (VER=%s): '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @do_compute_occ_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_compute_occ_strings(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.gc_arena, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = call i32 (...) @gc_new()
  %5 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 3
  %8 = load %struct.context*, %struct.context** %2, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load %struct.context*, %struct.context** %2, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.context*, %struct.context** %2, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 1
  %17 = call i8* @options_string(i32* %7, i32* %10, i32 %14, i32* %16, i32 0, %struct.gc_arena* %3)
  %18 = load %struct.context*, %struct.context** %2, align 8
  %19 = getelementptr inbounds %struct.context, %struct.context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load %struct.context*, %struct.context** %2, align 8
  %22 = getelementptr inbounds %struct.context, %struct.context* %21, i32 0, i32 3
  %23 = load %struct.context*, %struct.context** %2, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.context*, %struct.context** %2, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.context*, %struct.context** %2, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 1
  %32 = call i8* @options_string(i32* %22, i32* %25, i32 %29, i32* %31, i32 1, %struct.gc_arena* %3)
  %33 = load %struct.context*, %struct.context** %2, align 8
  %34 = getelementptr inbounds %struct.context, %struct.context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* @D_SHOW_OCC, align 4
  %37 = load %struct.context*, %struct.context** %2, align 8
  %38 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @options_string_version(i8* %40, %struct.gc_arena* %3)
  %42 = load %struct.context*, %struct.context** %2, align 8
  %43 = getelementptr inbounds %struct.context, %struct.context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @msg(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %45)
  %47 = load i32, i32* @D_SHOW_OCC, align 4
  %48 = load %struct.context*, %struct.context** %2, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @options_string_version(i8* %51, %struct.gc_arena* %3)
  %53 = load %struct.context*, %struct.context** %2, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @msg(i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %52, i8* %56)
  %58 = load %struct.context*, %struct.context** %2, align 8
  %59 = getelementptr inbounds %struct.context, %struct.context* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %1
  %64 = load %struct.context*, %struct.context** %2, align 8
  %65 = getelementptr inbounds %struct.context, %struct.context* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.context*, %struct.context** %2, align 8
  %69 = getelementptr inbounds %struct.context, %struct.context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.context*, %struct.context** %2, align 8
  %73 = getelementptr inbounds %struct.context, %struct.context* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @tls_multi_init_set_options(i64 %67, i8* %71, i8* %75)
  br label %77

77:                                               ; preds = %63, %1
  %78 = call i32 @gc_free(%struct.gc_arena* %3)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i8* @options_string(i32*, i32*, i32, i32*, i32, %struct.gc_arena*) #1

declare dso_local i32 @msg(i32, i8*, i32, i8*) #1

declare dso_local i32 @options_string_version(i8*, %struct.gc_arena*) #1

declare dso_local i32 @tls_multi_init_set_options(i64, i8*, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
