; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_proc_cb_compound_res.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_proc_cb_compound_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.cb_compound_res = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"compound_res.status\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"compound_res.tag\00", align 1
@CB_COMPOUND_MAX_OPERATIONS = common dso_local global i32 0, align 4
@cb_compound_resop = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"compound_res.resarray\00", align 1
@XDR_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @proc_cb_compound_res(%struct.TYPE_6__* %0, %struct.cb_compound_res* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.cb_compound_res*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.cb_compound_res* %1, %struct.cb_compound_res** %5, align 8
  %7 = load %struct.cb_compound_res*, %struct.cb_compound_res** %5, align 8
  %8 = icmp eq %struct.cb_compound_res* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* %3, align 8
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.cb_compound_res*, %struct.cb_compound_res** %5, align 8
  %14 = getelementptr inbounds %struct.cb_compound_res, %struct.cb_compound_res* %13, i32 0, i32 3
  %15 = call i64 @xdr_enum(%struct.TYPE_6__* %12, i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = call i32 @CBX_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %45

20:                                               ; preds = %11
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load %struct.cb_compound_res*, %struct.cb_compound_res** %5, align 8
  %23 = getelementptr inbounds %struct.cb_compound_res, %struct.cb_compound_res* %22, i32 0, i32 2
  %24 = call i64 @cb_compound_tag(%struct.TYPE_6__* %21, i32* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call i32 @CBX_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %45

29:                                               ; preds = %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = load %struct.cb_compound_res*, %struct.cb_compound_res** %5, align 8
  %32 = getelementptr inbounds %struct.cb_compound_res, %struct.cb_compound_res* %31, i32 0, i32 1
  %33 = bitcast i32* %32 to i8**
  %34 = load %struct.cb_compound_res*, %struct.cb_compound_res** %5, align 8
  %35 = getelementptr inbounds %struct.cb_compound_res, %struct.cb_compound_res* %34, i32 0, i32 0
  %36 = load i32, i32* @CB_COMPOUND_MAX_OPERATIONS, align 4
  %37 = load i64, i64* @cb_compound_resop, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @xdr_array(%struct.TYPE_6__* %30, i8** %33, i32* %35, i32 %36, i32 4, i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = call i32 @CBX_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %42, %27, %18
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XDR_FREE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.cb_compound_res*, %struct.cb_compound_res** %5, align 8
  %53 = call i32 @free(%struct.cb_compound_res* %52)
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %9
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @xdr_enum(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @CBX_ERR(i8*) #1

declare dso_local i64 @cb_compound_tag(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @xdr_array(%struct.TYPE_6__*, i8**, i32*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.cb_compound_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
