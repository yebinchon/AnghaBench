; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lparser.c_statement.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lparser.c_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@TK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statement(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %62 [
    i32 132, label %12
    i32 128, label %16
    i32 135, label %20
    i32 134, label %29
    i32 130, label %33
    i32 133, label %37
    i32 131, label %41
    i32 129, label %54
    i32 136, label %57
  ]

12:                                               ; preds = %1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ifstat(%struct.TYPE_19__* %13, i32 %14)
  store i32 0, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @whilestat(%struct.TYPE_19__* %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = call i32 @luaX_next(%struct.TYPE_19__* %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = call i32 @block(%struct.TYPE_19__* %23)
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %26 = load i32, i32* @TK_END, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @check_match(%struct.TYPE_19__* %25, i32 %26, i32 135, i32 %27)
  store i32 0, i32* %2, align 4
  br label %65

29:                                               ; preds = %1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @forstat(%struct.TYPE_19__* %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %65

33:                                               ; preds = %1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @repeatstat(%struct.TYPE_19__* %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %65

37:                                               ; preds = %1
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @funcstat(%struct.TYPE_19__* %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %65

41:                                               ; preds = %1
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = call i32 @luaX_next(%struct.TYPE_19__* %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = call i32 @testnext(%struct.TYPE_19__* %44, i32 133)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = call i32 @localfunc(%struct.TYPE_19__* %48)
  br label %53

50:                                               ; preds = %41
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = call i32 @localstat(%struct.TYPE_19__* %51)
  br label %53

53:                                               ; preds = %50, %47
  store i32 0, i32* %2, align 4
  br label %65

54:                                               ; preds = %1
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = call i32 @retstat(%struct.TYPE_19__* %55)
  store i32 1, i32* %2, align 4
  br label %65

57:                                               ; preds = %1
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = call i32 @luaX_next(%struct.TYPE_19__* %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %61 = call i32 @breakstat(%struct.TYPE_19__* %60)
  store i32 1, i32* %2, align 4
  br label %65

62:                                               ; preds = %1
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = call i32 @exprstat(%struct.TYPE_19__* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %57, %54, %53, %37, %33, %29, %20, %16, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ifstat(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @whilestat(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @luaX_next(%struct.TYPE_19__*) #1

declare dso_local i32 @block(%struct.TYPE_19__*) #1

declare dso_local i32 @check_match(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @forstat(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @repeatstat(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @funcstat(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @testnext(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @localfunc(%struct.TYPE_19__*) #1

declare dso_local i32 @localstat(%struct.TYPE_19__*) #1

declare dso_local i32 @retstat(%struct.TYPE_19__*) #1

declare dso_local i32 @breakstat(%struct.TYPE_19__*) #1

declare dso_local i32 @exprstat(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
