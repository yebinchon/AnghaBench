; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqPutInt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqPutInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"integer of size %lu not supported by pqPutInt\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"To backend (%lu#)> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqPutInt(i32 %0, i64 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = load i64, i64* %6, align 8
  switch i64 %10, label %31 [
    i64 2, label %11
    i64 4, label %21
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @pg_hton16(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = bitcast i32* %8 to i8*
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = call i32 @pqPutMsgBytes(i8* %14, i32 2, %struct.TYPE_4__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @EOF, align 4
  store i32 %19, i32* %4, align 4
  br label %50

20:                                               ; preds = %11
  br label %37

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pg_hton32(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = bitcast i32* %9 to i8*
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = call i32 @pqPutMsgBytes(i8* %24, i32 4, %struct.TYPE_4__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @EOF, align 4
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %21
  br label %37

31:                                               ; preds = %3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @pqInternalNotice(i32* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EOF, align 4
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %30, %20
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @fprintf(i64 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %31, %28, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @pg_hton16(i32) #1

declare dso_local i32 @pqPutMsgBytes(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @pg_hton32(i32) #1

declare dso_local i32 @pqInternalNotice(i32*, i8*, i64) #1

declare dso_local i32 @fprintf(i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
