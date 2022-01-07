; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_to_zval_read_control_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_to_zval_read_control_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"element #%u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.TYPE_6__*)* @to_zval_read_control_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_zval_read_control_array(i8* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca %struct.cmsghdr*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.msghdr*
  store %struct.msghdr* %15, %struct.msghdr** %7, align 8
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  store i8* %16, i8** %10, align 8
  store i32 1, i32* %11, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @array_init(i32* %17)
  %19 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %20 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %19)
  store %struct.cmsghdr* %20, %struct.cmsghdr** %8, align 8
  br label %21

21:                                               ; preds = %58, %3
  %22 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %23 = icmp ne %struct.cmsghdr* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %62

33:                                               ; preds = %31
  %34 = call i32 @ZVAL_NULL(i32* %13)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @Z_ARRVAL_P(i32* %35)
  %37 = call i32* @zend_hash_next_index_insert(i32 %36, i32* %13)
  store i32* %37, i32** %12, align 8
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = call i64 @snprintf(i8* %38, i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %39)
  %42 = icmp uge i64 %41, 20
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %45 = call i32 @memcpy(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @zend_llist_add_element(i32* %48, i8** %10)
  %50 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %51 = bitcast %struct.cmsghdr* %50 to i8*
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = call i32 @to_zval_read_control(i8* %51, i32* %52, %struct.TYPE_6__* %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @zend_llist_remove_tail(i32* %56)
  br label %58

58:                                               ; preds = %46
  %59 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %60 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %61 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %59, %struct.cmsghdr* %60)
  store %struct.cmsghdr* %61, %struct.cmsghdr** %8, align 8
  br label %21

62:                                               ; preds = %31
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32* @zend_hash_next_index_insert(i32, i32*) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @zend_llist_add_element(i32*, i8**) #1

declare dso_local i32 @to_zval_read_control(i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @zend_llist_remove_tail(i32*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
