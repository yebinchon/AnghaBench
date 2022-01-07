; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_proc_cb_compound_args.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_proc_cb_compound_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_compound_args = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"compound.tag\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"compound.minorversion\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"compound.callback_ident\00", align 1
@CB_COMPOUND_MAX_OPERATIONS = common dso_local global i32 0, align 4
@cb_compound_argop = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"compound.argarray\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @proc_cb_compound_args(i32* %0, %struct.cb_compound_args* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cb_compound_args*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.cb_compound_args* %1, %struct.cb_compound_args** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.cb_compound_args*, %struct.cb_compound_args** %4, align 8
  %8 = getelementptr inbounds %struct.cb_compound_args, %struct.cb_compound_args* %7, i32 0, i32 4
  %9 = call i64 @cb_compound_tag(i32* %6, i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @CBX_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %48

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.cb_compound_args*, %struct.cb_compound_args** %4, align 8
  %17 = getelementptr inbounds %struct.cb_compound_args, %struct.cb_compound_args* %16, i32 0, i32 3
  %18 = call i64 @xdr_u_int32_t(i32* %15, i32* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 @CBX_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %48

23:                                               ; preds = %14
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.cb_compound_args*, %struct.cb_compound_args** %4, align 8
  %26 = getelementptr inbounds %struct.cb_compound_args, %struct.cb_compound_args* %25, i32 0, i32 2
  %27 = call i64 @xdr_u_int32_t(i32* %24, i32* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 @CBX_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %48

32:                                               ; preds = %23
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.cb_compound_args*, %struct.cb_compound_args** %4, align 8
  %35 = getelementptr inbounds %struct.cb_compound_args, %struct.cb_compound_args* %34, i32 0, i32 1
  %36 = bitcast i32* %35 to i8**
  %37 = load %struct.cb_compound_args*, %struct.cb_compound_args** %4, align 8
  %38 = getelementptr inbounds %struct.cb_compound_args, %struct.cb_compound_args* %37, i32 0, i32 0
  %39 = load i32, i32* @CB_COMPOUND_MAX_OPERATIONS, align 4
  %40 = load i64, i64* @cb_compound_argop, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @xdr_array(i32* %33, i8** %36, i32* %38, i32 %39, i32 4, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %32
  %46 = call i32 @CBX_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %48

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %45, %30, %21, %12
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local i64 @cb_compound_tag(i32*, i32*) #1

declare dso_local i32 @CBX_ERR(i8*) #1

declare dso_local i64 @xdr_u_int32_t(i32*, i32*) #1

declare dso_local i64 @xdr_array(i32*, i8**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
