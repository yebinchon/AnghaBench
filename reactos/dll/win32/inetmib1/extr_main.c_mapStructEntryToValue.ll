; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mapStructEntryToValue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetmib1/extr_main.c_mapStructEntryToValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.structToAsnValue = type { i32, i32 (i32*, i32*)* }
%struct.TYPE_3__ = type { i32 }

@SNMP_ERRORSTATUS_NOSUCHNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.structToAsnValue*, i64, i8*, i64, %struct.TYPE_3__*)* @mapStructEntryToValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapStructEntryToValue(%struct.structToAsnValue* %0, i64 %1, i8* %2, i64 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.structToAsnValue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.structToAsnValue* %0, %struct.structToAsnValue** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %12 = load i64, i64* %10, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  store i32 %15, i32* %6, align 4
  br label %51

16:                                               ; preds = %5
  %17 = load i64, i64* %10, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  store i32 %23, i32* %6, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.structToAsnValue*, %struct.structToAsnValue** %7, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.structToAsnValue, %struct.structToAsnValue* %25, i64 %26
  %28 = getelementptr inbounds %struct.structToAsnValue, %struct.structToAsnValue* %27, i32 0, i32 1
  %29 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %28, align 8
  %30 = icmp ne i32 (i32*, i32*)* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @SNMP_ERRORSTATUS_NOSUCHNAME, align 4
  store i32 %32, i32* %6, align 4
  br label %51

33:                                               ; preds = %24
  %34 = load %struct.structToAsnValue*, %struct.structToAsnValue** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.structToAsnValue, %struct.structToAsnValue* %34, i64 %35
  %37 = getelementptr inbounds %struct.structToAsnValue, %struct.structToAsnValue* %36, i32 0, i32 1
  %38 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %9, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.structToAsnValue*, %struct.structToAsnValue** %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.structToAsnValue, %struct.structToAsnValue* %43, i64 %44
  %46 = getelementptr inbounds %struct.structToAsnValue, %struct.structToAsnValue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = call i32 %38(i32* %40, i32* %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %33, %31, %22, %14
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
