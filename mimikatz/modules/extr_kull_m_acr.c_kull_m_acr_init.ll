; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_acr.c_kull_m_acr_init.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_acr.c_kull_m_acr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@SCARD_SHARE_DIRECT = common dso_local global i32 0, align 4
@SCARD_SHARE_SHARED = common dso_local global i32 0, align 4
@SCARD_PROTOCOL_UNDEFINED = common dso_local global i32 0, align 4
@SCARD_PROTOCOL_Tx = common dso_local global i32 0, align 4
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i32] [i32 83, i32 67, i32 97, i32 114, i32 100, i32 67, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kull_m_acr_init(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %16 = load i8*, i8** @FALSE, align 8
  store i8* %16, i8** %13, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @SCARD_SHARE_DIRECT, align 4
  br label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @SCARD_SHARE_SHARED, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @SCARD_PROTOCOL_UNDEFINED, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @SCARD_PROTOCOL_Tx, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i64 @SCardConnect(i32 %28, i32 %29, i32 %37, i32 %45, i64* %47, i32* %14)
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %13, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @PRINT_ERROR(i8* bitcast ([22 x i32]* @.str to i8*), i64 %57)
  br label %59

59:                                               ; preds = %56, %44
  %60 = load i8*, i8** %13, align 8
  ret i8* %60
}

declare dso_local i64 @SCardConnect(i32, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
