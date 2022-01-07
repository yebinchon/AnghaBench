; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_libtcc.c_tcc_cleanup.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_libtcc.c_tcc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcc_state = common dso_local global i32* null, align 8
@tok_ident = common dso_local global i32 0, align 4
@TOK_IDENT = common dso_local global i32 0, align 4
@table_ident = common dso_local global i32***** null, align 8
@sym_pools = common dso_local global i32 0, align 4
@nb_sym_pools = common dso_local global i32 0, align 4
@tokcstr = common dso_local global i32 0, align 4
@sym_free_first = common dso_local global i32* null, align 8
@macro_ptr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tcc_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcc_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @tcc_state, align 8
  %4 = icmp eq i32* null, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %31

6:                                                ; preds = %0
  store i32* null, i32** @tcc_state, align 8
  %7 = call i32 @free_defines(i32* null)
  %8 = load i32, i32* @tok_ident, align 4
  %9 = load i32, i32* @TOK_IDENT, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %23, %6
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i32*****, i32****** @table_ident, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32****, i32***** %16, i64 %18
  %20 = load i32****, i32***** %19, align 8
  %21 = bitcast i32**** %20 to i32*****
  %22 = call i32 @free(i32***** %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i32*****, i32****** @table_ident, align 8
  %28 = call i32 @free(i32***** %27)
  %29 = call i32 @dynarray_reset(i32* @sym_pools, i32* @nb_sym_pools)
  %30 = call i32 @cstr_free(i32* @tokcstr)
  store i32* null, i32** @sym_free_first, align 8
  store i32* null, i32** @macro_ptr, align 8
  br label %31

31:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @free_defines(i32*) #1

declare dso_local i32 @free(i32*****) #1

declare dso_local i32 @dynarray_reset(i32*, i32*) #1

declare dso_local i32 @cstr_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
