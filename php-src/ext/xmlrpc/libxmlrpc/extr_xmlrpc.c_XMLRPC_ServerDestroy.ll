; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_ServerDestroy.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc.c_XMLRPC_ServerDestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XMLRPC_ServerDestroy(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %66

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = call %struct.TYPE_8__* @Q_Head(i32* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = call %struct.TYPE_8__* @Q_Head(i32* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  br label %14

14:                                               ; preds = %17, %7
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = call i32 @my_free(%struct.TYPE_8__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call %struct.TYPE_8__* @Q_Next(i32* %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %3, align 8
  br label %14

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %41, %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @my_free(%struct.TYPE_8__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @XMLRPC_CleanupValue(i64 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = call i32 @my_free(%struct.TYPE_8__* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = call %struct.TYPE_8__* @Q_Next(i32* %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %4, align 8
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @XMLRPC_CleanupValue(i64 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = call i32 @Q_Destroy(i32* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = call i32 @Q_Destroy(i32* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = call i32 @my_free(%struct.TYPE_8__* %64)
  br label %66

66:                                               ; preds = %57, %1
  ret void
}

declare dso_local %struct.TYPE_8__* @Q_Head(i32*) #1

declare dso_local i32 @my_free(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @Q_Next(i32*) #1

declare dso_local i32 @XMLRPC_CleanupValue(i64) #1

declare dso_local i32 @Q_Destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
