; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_DupValueNew.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_DupValueNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @XMLRPC_DupValueNew(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %3, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %7 = icmp ne %struct.TYPE_20__* %6, null
  br i1 %7, label %8, label %88

8:                                                ; preds = %1
  %9 = call %struct.TYPE_20__* (...) @XMLRPC_CreateValueEmpty()
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @XMLRPC_SetValueID(%struct.TYPE_20__* %16, i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %15, %8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %86 [
    i32 130, label %30
    i32 133, label %30
    i32 129, label %36
    i32 134, label %36
    i32 132, label %47
    i32 131, label %53
    i32 128, label %59
  ]

30:                                               ; preds = %26, %26
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @XMLRPC_SetValueInt(%struct.TYPE_20__* %31, i32 %34)
  br label %87

36:                                               ; preds = %26, %26
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @XMLRPC_SetValueString(%struct.TYPE_20__* %37, i32 %41, i32 %45)
  br label %87

47:                                               ; preds = %26
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @XMLRPC_SetValueDateTime(%struct.TYPE_20__* %48, i32 %51)
  br label %87

53:                                               ; preds = %26
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @XMLRPC_SetValueDouble(%struct.TYPE_20__* %54, i32 %57)
  br label %87

59:                                               ; preds = %26
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Q_Iter_Head_F(i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @XMLRPC_SetIsVector(%struct.TYPE_20__* %66, i32 %71)
  br label %73

73:                                               ; preds = %76, %59
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = call %struct.TYPE_20__* @Q_Iter_Get_F(i32 %77)
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %5, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = call %struct.TYPE_20__* @XMLRPC_DupValueNew(%struct.TYPE_20__* %80)
  %82 = call i32 @XMLRPC_AddValueToVector(%struct.TYPE_20__* %79, %struct.TYPE_20__* %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @Q_Iter_Next_F(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %73

85:                                               ; preds = %73
  br label %87

86:                                               ; preds = %26
  br label %87

87:                                               ; preds = %86, %85, %53, %47, %36, %30
  br label %88

88:                                               ; preds = %87, %1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  ret %struct.TYPE_20__* %89
}

declare dso_local %struct.TYPE_20__* @XMLRPC_CreateValueEmpty(...) #1

declare dso_local i32 @XMLRPC_SetValueID(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @XMLRPC_SetValueInt(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @XMLRPC_SetValueString(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @XMLRPC_SetValueDateTime(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @XMLRPC_SetValueDouble(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @Q_Iter_Head_F(i32) #1

declare dso_local i32 @XMLRPC_SetIsVector(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @Q_Iter_Get_F(i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @Q_Iter_Next_F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
