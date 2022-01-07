; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_java.c_load_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_java.c_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.r_bin_java_obj_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i32*, i32, i32*)* @load_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_buffer(%struct.TYPE_3__* %0, i8** %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.r_bin_java_obj_t*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.r_bin_java_obj_t* null, %struct.r_bin_java_obj_t** %12, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32* @r_buf_ref(i32* %14)
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = call %struct.r_bin_java_obj_t* @r_bin_java_new_buf(i32* %16, i32 %17, i32* %18)
  store %struct.r_bin_java_obj_t* %19, %struct.r_bin_java_obj_t** %12, align 8
  %20 = load %struct.r_bin_java_obj_t*, %struct.r_bin_java_obj_t** %12, align 8
  %21 = icmp ne %struct.r_bin_java_obj_t* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %46

23:                                               ; preds = %5
  %24 = load %struct.r_bin_java_obj_t*, %struct.r_bin_java_obj_t** %12, align 8
  %25 = bitcast %struct.r_bin_java_obj_t* %24 to i8*
  %26 = load i8**, i8*** %8, align 8
  store i8* %25, i8** %26, align 8
  %27 = load %struct.r_bin_java_obj_t*, %struct.r_bin_java_obj_t** %12, align 8
  %28 = call i32 @add_bin_obj_to_sdb(%struct.r_bin_java_obj_t* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @strdup(i64 %39)
  %41 = load %struct.r_bin_java_obj_t*, %struct.r_bin_java_obj_t** %12, align 8
  %42 = getelementptr inbounds %struct.r_bin_java_obj_t, %struct.r_bin_java_obj_t* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %31, %23
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @r_buf_free(i32* %44)
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %22
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32* @r_buf_ref(i32*) #1

declare dso_local %struct.r_bin_java_obj_t* @r_bin_java_new_buf(i32*, i32, i32*) #1

declare dso_local i32 @add_bin_obj_to_sdb(%struct.r_bin_java_obj_t*) #1

declare dso_local i32 @strdup(i64) #1

declare dso_local i32 @r_buf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
