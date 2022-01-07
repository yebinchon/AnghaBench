; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_controllen.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_controllen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.msghdr = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"controllen cannot be 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_8__*)* @from_zval_write_controllen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @from_zval_write_controllen(i32* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.msghdr*
  store %struct.msghdr* %10, %struct.msghdr** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i64* %8 to i8*
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = call i32 @from_zval_write_uint32(i32* %11, i8* %12, %struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = call i32 @do_from_zval_err(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %35

26:                                               ; preds = %20, %3
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = call i32 @accounted_emalloc(i64 %27, %struct.TYPE_8__* %28)
  %30 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @from_zval_write_uint32(i32*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @do_from_zval_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @accounted_emalloc(i64, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
