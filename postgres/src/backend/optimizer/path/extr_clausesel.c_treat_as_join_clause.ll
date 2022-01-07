; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_clausesel.c_treat_as_join_clause.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_clausesel.c_treat_as_join_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BMS_MULTIPLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32*)* @treat_as_join_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treat_as_join_clause(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

13:                                               ; preds = %4
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %33

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @bms_membership(i32 %23)
  %25 = load i64, i64* @BMS_MULTIPLE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @NumRelids(i32* %29)
  %31 = icmp sgt i32 %30, 1
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %20, %16, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @bms_membership(i32) #1

declare dso_local i32 @NumRelids(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
