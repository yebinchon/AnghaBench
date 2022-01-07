; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_asn1.c_kull_m_asn1_GenTime.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_asn1.c_kull_m_asn1_GenTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"%04hu%02hu%02hu%02hu%02hu%02huZ\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@DIRTY_ASN1_ID_GENERALIZED_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kull_m_asn1_GenTime(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca [16 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @FileTimeToSystemTime(i32 %7, %struct.TYPE_3__* %5)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @sprintf_s(i8* %11, i32 16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %17, i32 %19, i32 %21, i32 %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %10
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @DIRTY_ASN1_ID_GENERALIZED_TIME, align 4
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %30 = call i32 @ber_printf(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %29, i32 15)
  br label %31

31:                                               ; preds = %26, %10
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

declare dso_local i64 @FileTimeToSystemTime(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @sprintf_s(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ber_printf(i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
