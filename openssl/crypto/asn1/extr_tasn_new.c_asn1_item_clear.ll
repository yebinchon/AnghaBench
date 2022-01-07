; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_new.c_asn1_item_clear.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_new.c_asn1_item_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32**, %struct.TYPE_6__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_6__*)* @asn1_item_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asn1_item_clear(i32** %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %52 [
    i32 132, label %9
    i32 129, label %30
    i32 131, label %46
    i32 133, label %50
    i32 128, label %50
    i32 130, label %50
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32 (i32**, %struct.TYPE_6__*)*, i32 (i32**, %struct.TYPE_6__*)** %17, align 8
  %19 = icmp ne i32 (i32**, %struct.TYPE_6__*)* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32 (i32**, %struct.TYPE_6__*)*, i32 (i32**, %struct.TYPE_6__*)** %22, align 8
  %24 = load i32**, i32*** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call i32 %23(i32** %24, %struct.TYPE_6__* %25)
  br label %29

27:                                               ; preds = %15, %9
  %28 = load i32**, i32*** %3, align 8
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %27, %20
  br label %52

30:                                               ; preds = %2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32**, i32*** %3, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @asn1_template_clear(i32** %36, i32 %39)
  br label %45

41:                                               ; preds = %30
  %42 = load i32**, i32*** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = call i32 @asn1_primitive_clear(i32** %42, %struct.TYPE_6__* %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %52

46:                                               ; preds = %2
  %47 = load i32**, i32*** %3, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i32 @asn1_primitive_clear(i32** %47, %struct.TYPE_6__* %48)
  br label %52

50:                                               ; preds = %2, %2, %2
  %51 = load i32**, i32*** %3, align 8
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %2, %50, %46, %45, %29
  ret void
}

declare dso_local i32 @asn1_template_clear(i32**, i32) #1

declare dso_local i32 @asn1_primitive_clear(i32**, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
