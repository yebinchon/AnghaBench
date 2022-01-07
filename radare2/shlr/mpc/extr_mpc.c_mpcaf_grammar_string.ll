; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpcaf_grammar_string.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpcaf_grammar_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MPCA_LANG_WHITESPACE_SENSITIVE = common dso_local global i32 0, align 4
@mpcf_str_ast = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @mpcaf_grammar_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mpcaf_grammar_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @mpcf_unescape(i32* %10)
  store i8* %11, i8** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MPCA_LANG_WHITESPACE_SENSITIVE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @mpc_string(i8* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @mpc_string(i8* %22)
  %24 = call i32* @mpc_tok(i32* %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i32* [ %20, %18 ], [ %24, %21 ]
  store i32* %26, i32** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @mpcf_str_ast, align 4
  %31 = call i32 @mpc_apply(i32* %29, i32 %30)
  %32 = call i32 @mpca_tag(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = call i32* @mpca_state(i32 %32)
  ret i32* %33
}

declare dso_local i8* @mpcf_unescape(i32*) #1

declare dso_local i32* @mpc_string(i8*) #1

declare dso_local i32* @mpc_tok(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @mpca_state(i32) #1

declare dso_local i32 @mpca_tag(i32, i8*) #1

declare dso_local i32 @mpc_apply(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
