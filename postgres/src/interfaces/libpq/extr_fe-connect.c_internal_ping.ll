; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_internal_ping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_internal_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@PQPING_NO_ATTEMPT = common dso_local global i32 0, align 4
@CONNECTION_BAD = common dso_local global i64 0, align 8
@PQPING_OK = common dso_local global i32 0, align 4
@PQPING_NO_RESPONSE = common dso_local global i32 0, align 4
@ERRCODE_CANNOT_CONNECT_NOW = common dso_local global i32 0, align 4
@PQPING_REJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @internal_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_ping(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6, %1
  %12 = load i32, i32* @PQPING_NO_ATTEMPT, align 4
  store i32 %12, i32* %2, align 4
  br label %56

13:                                               ; preds = %6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CONNECTION_BAD, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = call i32 @connectDBComplete(%struct.TYPE_4__* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CONNECTION_BAD, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @PQPING_OK, align 4
  store i32 %29, i32* %2, align 4
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @PQPING_OK, align 4
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %30
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strlen(i32 %40)
  %42 = icmp ne i32 %41, 5
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @PQPING_NO_RESPONSE, align 4
  store i32 %44, i32* %2, align 4
  br label %56

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ERRCODE_CANNOT_CONNECT_NOW, align 4
  %50 = call i64 @strcmp(i32 %48, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @PQPING_REJECT, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @PQPING_OK, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %52, %43, %35, %28, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @connectDBComplete(%struct.TYPE_4__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
