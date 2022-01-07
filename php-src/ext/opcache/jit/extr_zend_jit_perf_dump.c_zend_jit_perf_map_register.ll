; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_perf_dump.c_zend_jit_perf_map_register.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/extr_zend_jit_perf_dump.c_zend_jit_perf_map_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zend_jit_perf_map_register.fp = internal global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"/tmp/perf-%d.map\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%zx %zx %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @zend_jit_perf_map_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_jit_perf_map_register(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** @zend_jit_perf_map_register.fp, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %12 = call i32 (...) @getpid()
  %13 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** @zend_jit_perf_map_register.fp, align 8
  %16 = load i32*, i32** @zend_jit_perf_map_register.fp, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %29

19:                                               ; preds = %10
  %20 = load i32*, i32** @zend_jit_perf_map_register.fp, align 8
  %21 = call i32 @setlinebuf(i32* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i32*, i32** @zend_jit_perf_map_register.fp, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %25, i64 %26, i8* %27)
  br label %29

29:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @setlinebuf(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
