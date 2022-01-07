; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_ShowGUCConfigOption.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_ShowGUCConfigOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXTOID = common dso_local global i32 0, align 4
@TTSOpsVirtual = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @ShowGUCConfigOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShowGUCConfigOption(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @GetConfigOptionByName(i8* %9, i8** %7, i32 0)
  store i8* %10, i8** %8, align 8
  %11 = call i32 @CreateTemplateTupleDesc(i32 1)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @TEXTOID, align 4
  %15 = call i32 @TupleDescInitBuiltinEntry(i32 %12, i32 1, i8* %13, i32 %14, i32 -1, i32 0)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32* @begin_tup_output_tupdesc(i32* %16, i32 %17, i32* @TTSOpsVirtual)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @do_text_output_oneline(i32* %19, i8* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @end_tup_output(i32* %22)
  ret void
}

declare dso_local i8* @GetConfigOptionByName(i8*, i8**, i32) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @TupleDescInitBuiltinEntry(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32* @begin_tup_output_tupdesc(i32*, i32, i32*) #1

declare dso_local i32 @do_text_output_oneline(i32*, i8*) #1

declare dso_local i32 @end_tup_output(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
