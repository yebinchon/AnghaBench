; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_object.c_ASN1_OBJECT_create.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_object.c_ASN1_OBJECT_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i32, i32, i32 }

@ASN1_OBJECT_FLAG_DYNAMIC = common dso_local global i32 0, align 4
@ASN1_OBJECT_FLAG_DYNAMIC_STRINGS = common dso_local global i32 0, align 4
@ASN1_OBJECT_FLAG_DYNAMIC_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ASN1_OBJECT_create(i32 %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC, align 4
  %23 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC_STRINGS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC_DATA, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = call %struct.TYPE_5__* @OBJ_dup(%struct.TYPE_5__* %11)
  ret %struct.TYPE_5__* %28
}

declare dso_local %struct.TYPE_5__* @OBJ_dup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
