; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeSpecial.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeSpecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@datecache = common dso_local global %struct.TYPE_4__** null, align 8
@TOKMAXLEN = common dso_local global i32 0, align 4
@datetktbl = common dso_local global i32 0, align 4
@szdatetktbl = common dso_local global i32 0, align 4
@UNKNOWN_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeSpecial(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @datecache, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %9, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TOKMAXLEN, align 4
  %22 = call i64 @strncmp(i8* %17, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16, %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @datetktbl, align 4
  %27 = load i32, i32* @szdatetktbl, align 4
  %28 = call %struct.TYPE_4__* @datebsearch(i8* %25, i32 %26, i32 %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %8, align 8
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = icmp eq %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @UNKNOWN_FIELD, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 0, i32* %34, align 4
  br label %48

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @datecache, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %32
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @datebsearch(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
