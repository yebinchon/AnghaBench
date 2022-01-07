; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_add_object.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_obj_dat.c_OBJ_add_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }

@added = common dso_local global i32* null, align 8
@ADDED_NID = common dso_local global i64 0, align 8
@ADDED_DATA = common dso_local global i64 0, align 8
@ADDED_SNAME = common dso_local global i64 0, align 8
@ADDED_LNAME = common dso_local global i64 0, align 8
@ASN1_OBJECT_FLAG_DYNAMIC = common dso_local global i32 0, align 4
@ASN1_OBJECT_FLAG_DYNAMIC_STRINGS = common dso_local global i32 0, align 4
@ASN1_OBJECT_FLAG_DYNAMIC_DATA = common dso_local global i32 0, align 4
@OBJ_F_OBJ_ADD_OBJECT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_add_object(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca [4 x %struct.TYPE_12__*], align 16
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = bitcast [4 x %struct.TYPE_12__*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false)
  %9 = load i32*, i32** @added, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = call i32 (...) @init_added()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %146

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call %struct.TYPE_11__* @OBJ_dup(%struct.TYPE_11__* %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %4, align 8
  %19 = icmp eq %struct.TYPE_11__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %125

21:                                               ; preds = %16
  %22 = call %struct.TYPE_12__* @OPENSSL_malloc(i32 16)
  %23 = load i64, i64* @ADDED_NID, align 8
  %24 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %23
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %24, align 8
  %25 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %121

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = call %struct.TYPE_12__* @OPENSSL_malloc(i32 16)
  %39 = load i64, i64* @ADDED_DATA, align 8
  %40 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %39
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %40, align 8
  %41 = icmp eq %struct.TYPE_12__* %38, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %121

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %32, %27
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = call %struct.TYPE_12__* @OPENSSL_malloc(i32 16)
  %51 = load i64, i64* @ADDED_SNAME, align 8
  %52 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %51
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %52, align 8
  %53 = icmp eq %struct.TYPE_12__* %50, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %121

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %44
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = call %struct.TYPE_12__* @OPENSSL_malloc(i32 16)
  %63 = load i64, i64* @ADDED_LNAME, align 8
  %64 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %63
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %64, align 8
  %65 = icmp eq %struct.TYPE_12__* %62, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %121

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i64, i64* @ADDED_DATA, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %104, %68
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @ADDED_NID, align 8
  %75 = icmp ule i64 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %78
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = icmp ne %struct.TYPE_12__* %80, null
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %85
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %91
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %94, align 8
  %95 = load i32*, i32** @added, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %97
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = call %struct.TYPE_12__* @lh_ADDED_OBJ_insert(i32* %95, %struct.TYPE_12__* %99)
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %6, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = call i32 @OPENSSL_free(%struct.TYPE_12__* %101)
  br label %103

103:                                              ; preds = %82, %76
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %71

107:                                              ; preds = %71
  %108 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC, align 4
  %109 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC_STRINGS, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC_DATA, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %2, align 4
  br label %146

121:                                              ; preds = %66, %54, %42, %26
  %122 = load i32, i32* @OBJ_F_OBJ_ADD_OBJECT, align 4
  %123 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %124 = call i32 @OBJerr(i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %20
  %126 = load i64, i64* @ADDED_DATA, align 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %139, %125
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @ADDED_NID, align 8
  %132 = icmp ule i64 %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x %struct.TYPE_12__*], [4 x %struct.TYPE_12__*]* %5, i64 0, i64 %135
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = call i32 @OPENSSL_free(%struct.TYPE_12__* %137)
  br label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %128

142:                                              ; preds = %128
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = call i32 @ASN1_OBJECT_free(%struct.TYPE_11__* %143)
  %145 = load i32, i32* @NID_undef, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %107, %14
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @init_added(...) #2

declare dso_local %struct.TYPE_11__* @OBJ_dup(%struct.TYPE_11__*) #2

declare dso_local %struct.TYPE_12__* @OPENSSL_malloc(i32) #2

declare dso_local %struct.TYPE_12__* @lh_ADDED_OBJ_insert(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @OPENSSL_free(%struct.TYPE_12__*) #2

declare dso_local i32 @OBJerr(i32, i32) #2

declare dso_local i32 @ASN1_OBJECT_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
