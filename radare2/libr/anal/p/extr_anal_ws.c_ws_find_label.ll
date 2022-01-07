; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ws.c_ws_find_label.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ws.c_ws_find_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (i32)*, %struct.TYPE_9__*, i32 (%struct.TYPE_9__*, i64, i32*, i32)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_8__*)* @ws_find_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ws_find_label(i32 %0, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [128 x i32], align 16
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  store i64 0, i64* %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %14 = load i64 (i32)*, i64 (i32)** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 %14(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %20 = load i32 (%struct.TYPE_9__*, i64, i32*, i32)*, i32 (%struct.TYPE_9__*, i64, i32*, i32)** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %25 = call i32 %20(%struct.TYPE_9__* %22, i64 %23, i32* %24, i32 128)
  br label %26

26:                                               ; preds = %65, %2
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %32 = call i64 @wsdis(%struct.TYPE_10__* %9, i32* %31, i32 128)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %77

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %38 = call i8* @r_strbuf_get(i32* %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 109
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 97
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  %61 = call i32 @atoi(i8* %60)
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %78

65:                                               ; preds = %57, %51, %45, %41, %36
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %66, %68
  store i64 %69, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %71 = load i32 (%struct.TYPE_9__*, i64, i32*, i32)*, i32 (%struct.TYPE_9__*, i64, i32*, i32)** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %76 = call i32 %71(%struct.TYPE_9__* %73, i64 %74, i32* %75, i32 128)
  br label %26

77:                                               ; preds = %34
  store i64 0, i64* %3, align 8
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i64 @wsdis(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i8* @r_strbuf_get(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
