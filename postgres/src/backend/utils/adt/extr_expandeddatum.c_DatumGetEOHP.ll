; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandeddatum.c_DatumGetEOHP.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_expandeddatum.c_DatumGetEOHP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DatumGetEOHP(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @DatumGetPointer(i32 %5)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @VARATT_IS_EXTERNAL_EXPANDED(i32* %8)
  %10 = call i32 @Assert(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @VARDATA_EXTERNAL(i32* %11)
  %13 = call i32 @memcpy(%struct.TYPE_3__* %4, i32 %12, i32 8)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @VARATT_IS_EXPANDED_HEADER(i32* %15)
  %17 = call i32 @Assert(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  ret i32* %19
}

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VARATT_IS_EXTERNAL_EXPANDED(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @VARDATA_EXTERNAL(i32*) #1

declare dso_local i32 @VARATT_IS_EXPANDED_HEADER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
