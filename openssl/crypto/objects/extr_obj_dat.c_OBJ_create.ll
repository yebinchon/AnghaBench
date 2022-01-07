; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_create.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32 }

@NID_undef = common dso_local global i64 0, align 8
@OBJ_F_OBJ_CREATE = common dso_local global i32 0, align 4
@OBJ_R_OID_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_create(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @OBJ_sn2nid(i8* %13)
  %15 = load i64, i64* @NID_undef, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %12, %3
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @OBJ_ln2nid(i8* %21)
  %23 = load i64, i64* @NID_undef, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %12
  %26 = load i32, i32* @OBJ_F_OBJ_CREATE, align 4
  %27 = load i32, i32* @OBJ_R_OID_EXISTS, align 4
  %28 = call i32 @OBJerr(i32 %26, i32 %27)
  store i32 0, i32* %4, align 4
  br label %64

29:                                               ; preds = %20, %17
  %30 = load i8*, i8** %5, align 8
  %31 = call %struct.TYPE_6__* @OBJ_txt2obj(i8* %30, i32 1)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %8, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %64

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = call i64 @OBJ_obj2nid(%struct.TYPE_6__* %36)
  %38 = load i64, i64* @NID_undef, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @OBJ_F_OBJ_CREATE, align 4
  %42 = load i32, i32* @OBJ_R_OID_EXISTS, align 4
  %43 = call i32 @OBJerr(i32 %41, i32 %42)
  br label %60

44:                                               ; preds = %35
  %45 = call i32 @OBJ_new_nid(i32 1)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = call i32 @OBJ_add_object(%struct.TYPE_6__* %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i8* null, i8** %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i8* null, i8** %59, align 8
  br label %60

60:                                               ; preds = %44, %40
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = call i32 @ASN1_OBJECT_free(%struct.TYPE_6__* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %34, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @OBJ_sn2nid(i8*) #1

declare dso_local i64 @OBJ_ln2nid(i8*) #1

declare dso_local i32 @OBJerr(i32, i32) #1

declare dso_local %struct.TYPE_6__* @OBJ_txt2obj(i8*, i32) #1

declare dso_local i64 @OBJ_obj2nid(%struct.TYPE_6__*) #1

declare dso_local i32 @OBJ_new_nid(i32) #1

declare dso_local i32 @OBJ_add_object(%struct.TYPE_6__*) #1

declare dso_local i32 @ASN1_OBJECT_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
