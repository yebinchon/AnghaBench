; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_new.c_asn1_primitive_clear.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_new.c_asn1_primitive_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32**, %struct.TYPE_6__*)* }

@ASN1_ITYPE_MSTRING = common dso_local global i64 0, align 8
@V_ASN1_BOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_6__*)* @asn1_primitive_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asn1_primitive_clear(i32** %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (i32**, %struct.TYPE_6__*)*, i32 (i32**, %struct.TYPE_6__*)** %19, align 8
  %21 = icmp ne i32 (i32**, %struct.TYPE_6__*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32**, %struct.TYPE_6__*)*, i32 (i32**, %struct.TYPE_6__*)** %24, align 8
  %26 = load i32**, i32*** %3, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i32 %25(i32** %26, %struct.TYPE_6__* %27)
  br label %31

29:                                               ; preds = %14
  %30 = load i32**, i32*** %3, align 8
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %29, %22
  br label %58

32:                                               ; preds = %9, %2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %32
  store i32 -1, i32* %5, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @V_ASN1_BOOLEAN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32**, i32*** %3, align 8
  %55 = bitcast i32** %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load i32**, i32*** %3, align 8
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %31, %56, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
