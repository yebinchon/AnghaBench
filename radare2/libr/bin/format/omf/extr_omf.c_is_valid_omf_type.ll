; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/omf/extr_omf.c_is_valid_omf_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/omf/extr_omf.c_is_valid_omf_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMF_THEADR = common dso_local global i64 0, align 8
@OMF_LHEADR = common dso_local global i64 0, align 8
@OMF_COMENT = common dso_local global i64 0, align 8
@OMF_MODEND = common dso_local global i64 0, align 8
@OMF_MODEND32 = common dso_local global i64 0, align 8
@OMF_EXTDEF = common dso_local global i64 0, align 8
@OMF_PUBDEF = common dso_local global i64 0, align 8
@OMF_PUBDEF32 = common dso_local global i64 0, align 8
@OMF_LINNUM = common dso_local global i64 0, align 8
@OMF_LINNUM32 = common dso_local global i64 0, align 8
@OMF_LNAMES = common dso_local global i64 0, align 8
@OMF_SEGDEF = common dso_local global i64 0, align 8
@OMF_SEGDEF32 = common dso_local global i64 0, align 8
@OMF_GRPDEF = common dso_local global i64 0, align 8
@OMF_FIXUPP = common dso_local global i64 0, align 8
@OMF_FIXUPP32 = common dso_local global i64 0, align 8
@OMF_LEDATA = common dso_local global i64 0, align 8
@OMF_LEDATA32 = common dso_local global i64 0, align 8
@OMF_LIDATA = common dso_local global i64 0, align 8
@OMF_LIDATA32 = common dso_local global i64 0, align 8
@OMF_COMDEF = common dso_local global i64 0, align 8
@OMF_BAKPAT = common dso_local global i64 0, align 8
@OMF_BAKPAT32 = common dso_local global i64 0, align 8
@OMF_LEXTDEF = common dso_local global i64 0, align 8
@OMF_LPUBDEF = common dso_local global i64 0, align 8
@OMF_LPUBDEF32 = common dso_local global i64 0, align 8
@OMF_LCOMDEF = common dso_local global i64 0, align 8
@OMF_CEXTDEF = common dso_local global i64 0, align 8
@OMF_COMDAT = common dso_local global i64 0, align 8
@OMF_COMDAT32 = common dso_local global i64 0, align 8
@OMF_LINSYM = common dso_local global i64 0, align 8
@OMF_LINSYM32 = common dso_local global i64 0, align 8
@OMF_ALIAS = common dso_local global i64 0, align 8
@OMF_NBKPAT = common dso_local global i64 0, align 8
@OMF_NBKPAT32 = common dso_local global i64 0, align 8
@OMF_LLNAMES = common dso_local global i64 0, align 8
@OMF_VERNUM = common dso_local global i64 0, align 8
@OMF_VENDEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_valid_omf_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_omf_type(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [40 x i64], align 16
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %6 = getelementptr inbounds [40 x i64], [40 x i64]* %5, i64 0, i64 0
  %7 = load i64, i64* @OMF_THEADR, align 8
  store i64 %7, i64* %6, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 1
  %9 = load i64, i64* @OMF_LHEADR, align 8
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 1
  %11 = load i64, i64* @OMF_COMENT, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 1
  %13 = load i64, i64* @OMF_MODEND, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 1
  %15 = load i64, i64* @OMF_MODEND32, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 1
  %17 = load i64, i64* @OMF_EXTDEF, align 8
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 1
  %19 = load i64, i64* @OMF_PUBDEF, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 1
  %21 = load i64, i64* @OMF_PUBDEF32, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 1
  %23 = load i64, i64* @OMF_LINNUM, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 1
  %25 = load i64, i64* @OMF_LINNUM32, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 1
  %27 = load i64, i64* @OMF_LNAMES, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 1
  %29 = load i64, i64* @OMF_LNAMES, align 8
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 1
  %31 = load i64, i64* @OMF_SEGDEF, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 1
  %33 = load i64, i64* @OMF_SEGDEF32, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 1
  %35 = load i64, i64* @OMF_GRPDEF, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 1
  %37 = load i64, i64* @OMF_FIXUPP, align 8
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 1
  %39 = load i64, i64* @OMF_FIXUPP32, align 8
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 1
  %41 = load i64, i64* @OMF_LEDATA, align 8
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 1
  %43 = load i64, i64* @OMF_LEDATA32, align 8
  store i64 %43, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 1
  %45 = load i64, i64* @OMF_LIDATA, align 8
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 1
  %47 = load i64, i64* @OMF_LIDATA32, align 8
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 1
  %49 = load i64, i64* @OMF_COMDEF, align 8
  store i64 %49, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 1
  %51 = load i64, i64* @OMF_BAKPAT, align 8
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 1
  %53 = load i64, i64* @OMF_BAKPAT32, align 8
  store i64 %53, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 1
  %55 = load i64, i64* @OMF_LEXTDEF, align 8
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 1
  %57 = load i64, i64* @OMF_LPUBDEF, align 8
  store i64 %57, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 1
  %59 = load i64, i64* @OMF_LPUBDEF32, align 8
  store i64 %59, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 1
  %61 = load i64, i64* @OMF_LCOMDEF, align 8
  store i64 %61, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 1
  %63 = load i64, i64* @OMF_CEXTDEF, align 8
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 1
  %65 = load i64, i64* @OMF_COMDAT, align 8
  store i64 %65, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 1
  %67 = load i64, i64* @OMF_COMDAT32, align 8
  store i64 %67, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 1
  %69 = load i64, i64* @OMF_LINSYM, align 8
  store i64 %69, i64* %68, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 1
  %71 = load i64, i64* @OMF_LINSYM32, align 8
  store i64 %71, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 1
  %73 = load i64, i64* @OMF_ALIAS, align 8
  store i64 %73, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 1
  %75 = load i64, i64* @OMF_NBKPAT, align 8
  store i64 %75, i64* %74, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 1
  %77 = load i64, i64* @OMF_NBKPAT32, align 8
  store i64 %77, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 1
  %79 = load i64, i64* @OMF_LLNAMES, align 8
  store i64 %79, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 1
  %81 = load i64, i64* @OMF_VERNUM, align 8
  store i64 %81, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 1
  %83 = load i64, i64* @OMF_VENDEXT, align 8
  store i64 %83, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %100, %1
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [40 x i64], [40 x i64]* %5, i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load i64, i64* %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [40 x i64], [40 x i64]* %5, i64 0, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 1, i32* %2, align 4
  br label %104

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %85

103:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %98
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
