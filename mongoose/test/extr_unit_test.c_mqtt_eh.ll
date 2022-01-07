; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_mqtt_eh.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_mqtt_eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8* }
%struct.mg_mqtt_message = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"/topic\00", align 1
@mqtt_long_payload_len = common dso_local global i64 0, align 8
@mqtt_very_long_payload_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @mqtt_eh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqtt_eh(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mg_mqtt_message*, align 8
  %9 = alloca i64, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.mg_mqtt_message*
  store %struct.mg_mqtt_message* %15, %struct.mg_mqtt_message** %8, align 8
  %16 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %76 [
    i32 128, label %19
    i32 129, label %21
    i32 130, label %74
  ]

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  store i32 1, i32* %20, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.mg_mqtt_message*, %struct.mg_mqtt_message** %8, align 8
  %24 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %23, i32 0, i32 1
  %25 = call i32 @mg_vcmp(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  store i32 -1, i32* %28, align 4
  br label %76

29:                                               ; preds = %21
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.mg_mqtt_message*, %struct.mg_mqtt_message** %8, align 8
  %33 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %39 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 10, %42
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 65
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32*, i32** %7, align 8
  store i32 -1, i32* %49, align 4
  br label %54

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %30

54:                                               ; preds = %48, %30
  %55 = load %struct.mg_mqtt_message*, %struct.mg_mqtt_message** %8, align 8
  %56 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @mqtt_long_payload_len, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32*, i32** %7, align 8
  store i32 2, i32* %62, align 4
  br label %73

63:                                               ; preds = %54
  %64 = load %struct.mg_mqtt_message*, %struct.mg_mqtt_message** %8, align 8
  %65 = getelementptr inbounds %struct.mg_mqtt_message, %struct.mg_mqtt_message* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @mqtt_very_long_payload_len, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32*, i32** %7, align 8
  store i32 3, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %63
  br label %73

73:                                               ; preds = %72, %61
  br label %76

74:                                               ; preds = %3
  %75 = load i32*, i32** %7, align 8
  store i32 4, i32* %75, align 4
  br label %76

76:                                               ; preds = %3, %74, %73, %27, %19
  ret void
}

declare dso_local i32 @mg_vcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
