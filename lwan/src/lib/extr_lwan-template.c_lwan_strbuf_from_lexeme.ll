; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_strbuf_from_lexeme.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_strbuf_from_lexeme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_strbuf = type { i32 }
%struct.parser = type { i32 }
%struct.lexeme = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LWAN_TPL_FLAG_CONST_TEMPLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lwan_strbuf* (%struct.parser*, %struct.lexeme*)* @lwan_strbuf_from_lexeme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lwan_strbuf* @lwan_strbuf_from_lexeme(%struct.parser* %0, %struct.lexeme* %1) #0 {
  %3 = alloca %struct.lwan_strbuf*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca %struct.lexeme*, align 8
  %6 = alloca %struct.lwan_strbuf*, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store %struct.lexeme* %1, %struct.lexeme** %5, align 8
  %7 = load %struct.parser*, %struct.parser** %4, align 8
  %8 = getelementptr inbounds %struct.parser, %struct.parser* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LWAN_TPL_FLAG_CONST_TEMPLATE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %15 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %19 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.lwan_strbuf* @lwan_strbuf_new_static(i32 %17, i32 %21)
  store %struct.lwan_strbuf* %22, %struct.lwan_strbuf** %3, align 8
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %25 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.lwan_strbuf* @lwan_strbuf_new_with_size(i32 %27)
  store %struct.lwan_strbuf* %28, %struct.lwan_strbuf** %6, align 8
  %29 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %6, align 8
  %30 = icmp ne %struct.lwan_strbuf* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %23
  %32 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %6, align 8
  %33 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %34 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lexeme*, %struct.lexeme** %5, align 8
  %38 = getelementptr inbounds %struct.lexeme, %struct.lexeme* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lwan_strbuf_set(%struct.lwan_strbuf* %32, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %31, %23
  %43 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %6, align 8
  store %struct.lwan_strbuf* %43, %struct.lwan_strbuf** %3, align 8
  br label %44

44:                                               ; preds = %42, %13
  %45 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  ret %struct.lwan_strbuf* %45
}

declare dso_local %struct.lwan_strbuf* @lwan_strbuf_new_static(i32, i32) #1

declare dso_local %struct.lwan_strbuf* @lwan_strbuf_new_with_size(i32) #1

declare dso_local i32 @lwan_strbuf_set(%struct.lwan_strbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
