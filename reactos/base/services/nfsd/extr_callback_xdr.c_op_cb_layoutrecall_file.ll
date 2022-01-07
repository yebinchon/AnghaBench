; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_op_cb_layoutrecall_file.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_op_cb_layoutrecall_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_recall_file = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"layoutrecall_file.fh\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"layoutrecall_file.offset\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"layoutrecall_file.length\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"layoutrecall_file.stateid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.cb_recall_file*)* @op_cb_layoutrecall_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @op_cb_layoutrecall_file(i32* %0, %struct.cb_recall_file* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cb_recall_file*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cb_recall_file* %1, %struct.cb_recall_file** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.cb_recall_file*, %struct.cb_recall_file** %4, align 8
  %8 = getelementptr inbounds %struct.cb_recall_file, %struct.cb_recall_file* %7, i32 0, i32 3
  %9 = call i64 @common_fh(i32* %6, i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @CBX_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %42

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.cb_recall_file*, %struct.cb_recall_file** %4, align 8
  %17 = getelementptr inbounds %struct.cb_recall_file, %struct.cb_recall_file* %16, i32 0, i32 2
  %18 = call i64 @xdr_u_int64_t(i32* %15, i32* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 @CBX_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %42

23:                                               ; preds = %14
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.cb_recall_file*, %struct.cb_recall_file** %4, align 8
  %26 = getelementptr inbounds %struct.cb_recall_file, %struct.cb_recall_file* %25, i32 0, i32 1
  %27 = call i64 @xdr_u_int64_t(i32* %24, i32* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 @CBX_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %42

32:                                               ; preds = %23
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.cb_recall_file*, %struct.cb_recall_file** %4, align 8
  %35 = getelementptr inbounds %struct.cb_recall_file, %struct.cb_recall_file* %34, i32 0, i32 0
  %36 = call i64 @common_stateid(i32* %33, i32* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 @CBX_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %39, %30, %21, %12
  %43 = load i64, i64* %5, align 8
  ret i64 %43
}

declare dso_local i64 @common_fh(i32*, i32*) #1

declare dso_local i32 @CBX_ERR(i8*) #1

declare dso_local i64 @xdr_u_int64_t(i32*, i32*) #1

declare dso_local i64 @common_stateid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
