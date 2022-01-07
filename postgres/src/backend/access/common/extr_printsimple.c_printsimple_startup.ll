; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printsimple.c_printsimple_startup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_printsimple.c_printsimple_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printsimple_startup(i32* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %10 = call i32 @pq_beginmessage(i32* %7, i8 signext 84)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pq_sendint16(i32* %7, i32 %13)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %46, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__* %22, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %9, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @NameStr(i32 %27)
  %29 = call i32 @pq_sendstring(i32* %7, i32 %28)
  %30 = call i32 @pq_sendint32(i32* %7, i32 0)
  %31 = call i32 @pq_sendint16(i32* %7, i32 0)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @pq_sendint32(i32* %7, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pq_sendint16(i32* %7, i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pq_sendint32(i32* %7, i32 %43)
  %45 = call i32 @pq_sendint16(i32* %7, i32 0)
  br label %46

46:                                               ; preds = %21
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %15

49:                                               ; preds = %15
  %50 = call i32 @pq_endmessage(i32* %7)
  ret void
}

declare dso_local i32 @pq_beginmessage(i32*, i8 signext) #1

declare dso_local i32 @pq_sendint16(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @TupleDescAttr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pq_sendstring(i32*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @pq_sendint32(i32*, i32) #1

declare dso_local i32 @pq_endmessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
