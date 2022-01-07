; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_oct.c_o2i_SCT_signature.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ct/extr_ct_oct.c_o2i_SCT_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@SCT_VERSION_V1 = common dso_local global i64 0, align 8
@CT_F_O2I_SCT_SIGNATURE = common dso_local global i32 0, align 4
@CT_R_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@CT_R_SCT_INVALID_SIGNATURE = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2i_SCT_signature(%struct.TYPE_5__* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCT_VERSION_V1, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @CT_F_O2I_SCT_SIGNATURE, align 4
  %19 = load i32, i32* @CT_R_UNSUPPORTED_VERSION, align 4
  %20 = call i32 @CTerr(i32 %18, i32 %19)
  store i32 -1, i32* %4, align 4
  br label %89

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = icmp ule i64 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @CT_F_O2I_SCT_SIGNATURE, align 4
  %26 = load i32, i32* @CT_R_SCT_INVALID_SIGNATURE, align 4
  %27 = call i32 @CTerr(i32 %25, i32 %26)
  store i32 -1, i32* %4, align 4
  br label %89

28:                                               ; preds = %21
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  %33 = load i8, i8* %31, align 1
  %34 = zext i8 %33 to i32
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %10, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = call i64 @SCT_get_signature_nid(%struct.TYPE_5__* %43)
  %45 = load i64, i64* @NID_undef, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load i32, i32* @CT_F_O2I_SCT_SIGNATURE, align 4
  %49 = load i32, i32* @CT_R_SCT_INVALID_SIGNATURE, align 4
  %50 = call i32 @CTerr(i32 %48, i32 %49)
  store i32 -1, i32* %4, align 4
  br label %89

51:                                               ; preds = %28
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @n2s(i8* %52, i64 %53)
  %55 = load i8*, i8** %10, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = load i64, i64* %9, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = load i32, i32* @CT_F_O2I_SCT_SIGNATURE, align 4
  %68 = load i32, i32* @CT_R_SCT_INVALID_SIGNATURE, align 4
  %69 = call i32 @CTerr(i32 %67, i32 %68)
  store i32 -1, i32* %4, align 4
  br label %89

70:                                               ; preds = %51
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @SCT_set1_signature(%struct.TYPE_5__* %71, i8* %72, i64 %73)
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 -1, i32* %4, align 4
  br label %89

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8**, i8*** %6, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %77, %76, %66, %47, %24, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i64 @SCT_get_signature_nid(%struct.TYPE_5__*) #1

declare dso_local i32 @n2s(i8*, i64) #1

declare dso_local i32 @SCT_set1_signature(%struct.TYPE_5__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
