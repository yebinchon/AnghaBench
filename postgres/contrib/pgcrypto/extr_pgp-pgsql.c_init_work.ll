; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_init_work.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pgsql.c_init_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_expect = type { i64 }

@show_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32*, %struct.debug_expect*)* @init_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_work(i32** %0, i32 %1, i32* %2, %struct.debug_expect* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.debug_expect*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.debug_expect* %3, %struct.debug_expect** %8, align 8
  %10 = load i32**, i32*** %5, align 8
  %11 = call i32 @pgp_init(i32** %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @fill_expect(%struct.debug_expect* %12, i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @VARDATA_ANY(i32* %23)
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @VARSIZE_ANY_EXHDR(i32* %26)
  %28 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %29 = call i32 @parse_args(i32* %22, i32* %25, i32 %27, %struct.debug_expect* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %20, %17, %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @px_THROW_ERROR(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.debug_expect*, %struct.debug_expect** %8, align 8
  %38 = getelementptr inbounds %struct.debug_expect, %struct.debug_expect* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @show_debug, align 4
  %43 = call i32 @px_set_debug_handler(i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32**, i32*** %5, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @pgp_set_text_mode(i32* %46, i32 %47)
  ret void
}

declare dso_local i32 @pgp_init(i32**) #1

declare dso_local i32 @fill_expect(%struct.debug_expect*, i32) #1

declare dso_local i32 @parse_args(i32*, i32*, i32, %struct.debug_expect*) #1

declare dso_local i64 @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @px_THROW_ERROR(i32) #1

declare dso_local i32 @px_set_debug_handler(i32) #1

declare dso_local i32 @pgp_set_text_mode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
