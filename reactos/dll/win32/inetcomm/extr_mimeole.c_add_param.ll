; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_add_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_mimeole.c_add_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"got param %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"malformed parameter - skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @add_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_param(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %26, %2
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 9
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ true, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  br label %14

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 61)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %79

36:                                               ; preds = %29
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = add nsw i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call i8* @HeapAlloc(i32 %37, i32 0, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i8* %46, i8* %47, i32 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %6, align 8
  %64 = call i32 (...) @GetProcessHeap()
  %65 = call i8* @HeapAlloc(i32 %64, i32 0, i32 16)
  %66 = bitcast i8* %65 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @unquote_string(i8* %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  br label %79

79:                                               ; preds = %36, %34
  ret void
}

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @unquote_string(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
