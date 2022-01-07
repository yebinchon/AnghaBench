; ModuleID = '/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_get_debug_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_get_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"num\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @gmp_get_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gmp_get_debug_info(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @zend_std_get_properties(i32* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_2__* @GET_GMP_OBJECT_FROM_OBJ(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 1, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @zend_array_dup(i32* %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @gmp_strval(i32* %8, i32 %18, i32 10)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @zend_hash_str_update(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i32* %8)
  %22 = load i32*, i32** %5, align 8
  ret i32* %22
}

declare dso_local i32* @zend_std_get_properties(i32*) #1

declare dso_local %struct.TYPE_2__* @GET_GMP_OBJECT_FROM_OBJ(i32*) #1

declare dso_local i32* @zend_array_dup(i32*) #1

declare dso_local i32 @gmp_strval(i32*, i32, i32) #1

declare dso_local i32 @zend_hash_str_update(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
