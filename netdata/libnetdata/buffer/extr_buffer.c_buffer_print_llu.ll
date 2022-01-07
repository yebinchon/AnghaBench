; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/buffer/extr_buffer.c_buffer_print_llu.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/buffer/extr_buffer.c_buffer_print_llu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_print_llu(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = call i32 @buffer_need_bytes(%struct.TYPE_4__* %10, i32 50)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %27, %2
  %21 = load i64, i64* %4, align 8
  %22 = urem i64 %21, 10
  %23 = add i64 48, %22
  %24 = trunc i64 %23 to i8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  store i8 %24, i8* %25, align 1
  br label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = udiv i64 %28, 10
  store i64 %29, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %20, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %40, %31
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ugt i8* %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %9, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %8, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i8, i8* %9, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  store i8 %47, i8* %48, align 1
  br label %36

50:                                               ; preds = %36
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  ret void
}

declare dso_local i32 @buffer_need_bytes(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
