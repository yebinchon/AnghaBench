; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_op_cb_getattr_res.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_callback_xdr.c_op_cb_getattr_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_getattr_res = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"getattr.status\00", align 1
@NFS4_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"getattr.obj_attributes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cb_getattr_res*)* @op_cb_getattr_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_cb_getattr_res(i32* %0, %struct.cb_getattr_res* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cb_getattr_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %3, align 8
  store %struct.cb_getattr_res* %1, %struct.cb_getattr_res** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.cb_getattr_res*, %struct.cb_getattr_res** %4, align 8
  %9 = getelementptr inbounds %struct.cb_getattr_res, %struct.cb_getattr_res* %8, i32 0, i32 0
  %10 = call i32 @xdr_enum(i32* %7, i64* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @CBX_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.cb_getattr_res*, %struct.cb_getattr_res** %4, align 8
  %17 = getelementptr inbounds %struct.cb_getattr_res, %struct.cb_getattr_res* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NFS4_OK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.cb_getattr_res*, %struct.cb_getattr_res** %4, align 8
  %24 = getelementptr inbounds %struct.cb_getattr_res, %struct.cb_getattr_res* %23, i32 0, i32 1
  %25 = call i32 @info_to_fattr4(i32* %24, %struct.TYPE_4__* %6)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %38

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @xdr_fattr4(i32* %30, %struct.TYPE_4__* %6)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @CBX_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %38

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %34, %28, %13
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @xdr_enum(i32*, i64*) #1

declare dso_local i32 @CBX_ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @info_to_fattr4(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @xdr_fattr4(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
