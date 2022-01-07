; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_init.c_PKCS12_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_init.c_PKCS12_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }

@PKCS12_F_PKCS12_INIT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PKCS12_R_UNSUPPORTED_PKCS12_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @PKCS12_init(i32 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.TYPE_9__* (...) @PKCS12_new()
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %4, align 8
  %6 = icmp eq %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @PKCS12_F_PKCS12_INIT, align 4
  %9 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %10 = call i32 @PKCS12err(i32 %8, i32 %9)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ASN1_INTEGER_set(i32 %14, i32 3)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %45

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @OBJ_nid2obj(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  switch i32 %25, label %39 [
    i32 128, label %26
  ]

26:                                               ; preds = %18
  %27 = call i32* (...) @ASN1_OCTET_STRING_new()
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32* %27, i32** %32, align 8
  %33 = icmp eq i32* %27, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @PKCS12_F_PKCS12_INIT, align 4
  %36 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %37 = call i32 @PKCS12err(i32 %35, i32 %36)
  br label %45

38:                                               ; preds = %26
  br label %43

39:                                               ; preds = %18
  %40 = load i32, i32* @PKCS12_F_PKCS12_INIT, align 4
  %41 = load i32, i32* @PKCS12_R_UNSUPPORTED_PKCS12_MODE, align 4
  %42 = call i32 @PKCS12err(i32 %40, i32 %41)
  br label %45

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %2, align 8
  br label %48

45:                                               ; preds = %39, %34, %17
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = call i32 @PKCS12_free(%struct.TYPE_9__* %46)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %48

48:                                               ; preds = %45, %43, %7
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %49
}

declare dso_local %struct.TYPE_9__* @PKCS12_new(...) #1

declare dso_local i32 @PKCS12err(i32, i32) #1

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32* @ASN1_OCTET_STRING_new(...) #1

declare dso_local i32 @PKCS12_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
