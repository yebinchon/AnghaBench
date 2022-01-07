; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mdmp.c_load_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mdmp.c_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_mdmp_obj = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32, i32*)* @load_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_buffer(i32* %0, i8** %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.r_bin_mdmp_obj*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @r_return_val_if_fail(i32* %13, i32 0)
  %15 = load i32*, i32** %9, align 8
  %16 = call %struct.r_bin_mdmp_obj* @r_bin_mdmp_new_buf(i32* %15)
  store %struct.r_bin_mdmp_obj* %16, %struct.r_bin_mdmp_obj** %12, align 8
  %17 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %12, align 8
  %18 = icmp ne %struct.r_bin_mdmp_obj* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %12, align 8
  %22 = getelementptr inbounds %struct.r_bin_mdmp_obj, %struct.r_bin_mdmp_obj* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sdb_ns_set(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.r_bin_mdmp_obj*, %struct.r_bin_mdmp_obj** %12, align 8
  %26 = bitcast %struct.r_bin_mdmp_obj* %25 to i8*
  %27 = load i8**, i8*** %8, align 8
  store i8* %26, i8** %27, align 8
  store i32 1, i32* %6, align 4
  br label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @r_return_val_if_fail(i32*, i32) #1

declare dso_local %struct.r_bin_mdmp_obj* @r_bin_mdmp_new_buf(i32*) #1

declare dso_local i32 @sdb_ns_set(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
