; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_lib.c_X509V3_EXT_get_nid.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_lib.c_X509V3_EXT_get_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@standard_exts = common dso_local global i32 0, align 4
@STANDARD_EXTENSION_COUNT = common dso_local global i32 0, align 4
@ext_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @X509V3_EXT_get_nid(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @standard_exts, align 4
  %15 = load i32, i32* @STANDARD_EXTENSION_COUNT, align 4
  %16 = call %struct.TYPE_7__** @OBJ_bsearch_ext(%struct.TYPE_7__** %5, i32 %14, i32 %15)
  store %struct.TYPE_7__** %16, %struct.TYPE_7__*** %6, align 8
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %18 = icmp ne %struct.TYPE_7__** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %2, align 8
  br label %32

22:                                               ; preds = %11
  %23 = load i32, i32* @ext_list, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @ext_list, align 4
  %28 = call i32 @sk_X509V3_EXT_METHOD_find(i32 %27, %struct.TYPE_7__* %4)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ext_list, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.TYPE_7__* @sk_X509V3_EXT_METHOD_value(i32 %29, i32 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %2, align 8
  br label %32

32:                                               ; preds = %26, %25, %19, %10
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %33
}

declare dso_local %struct.TYPE_7__** @OBJ_bsearch_ext(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @sk_X509V3_EXT_METHOD_find(i32, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @sk_X509V3_EXT_METHOD_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
