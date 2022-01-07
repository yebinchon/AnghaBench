; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_object.c_c2i_ASN1_OBJECT.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_object.c_c2i_ASN1_OBJECT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32, i32*, i32* }

@INT_MAX = common dso_local global i64 0, align 8
@ASN1_F_C2I_ASN1_OBJECT = common dso_local global i32 0, align 4
@ASN1_R_INVALID_OBJECT_ENCODING = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@ASN1_OBJECT_FLAG_DYNAMIC = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ASN1_OBJECT_FLAG_DYNAMIC_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @c2i_ASN1_OBJECT(%struct.TYPE_8__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @INT_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = load i8**, i8*** %6, align 8
  %22 = icmp eq i8** %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27, %23, %20, %16, %3
  %37 = load i32, i32* @ASN1_F_C2I_ASN1_OBJECT, align 4
  %38 = load i32, i32* @ASN1_R_INVALID_OBJECT_ENCODING, align 4
  %39 = call i32 @ASN1err(i32 %37, i32 %38)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %200

40:                                               ; preds = %27
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @NID_undef, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i32 0, i32* %49, align 4
  %50 = call i32 @OBJ_obj2nid(%struct.TYPE_8__* %9)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @NID_undef, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %40
  %55 = load i32, i32* %12, align 4
  %56 = call %struct.TYPE_8__* @OBJ_nid2obj(i32 %55)
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %8, align 8
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %58 = icmp ne %struct.TYPE_8__** %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i32 @ASN1_OBJECT_free(%struct.TYPE_8__* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %64, align 8
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i64, i64* %7, align 8
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 %66
  store i8* %69, i8** %67, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %4, align 8
  br label %200

71:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %96, %71
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 -1
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 128
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %84, %81
  %92 = load i32, i32* @ASN1_F_C2I_ASN1_OBJECT, align 4
  %93 = load i32, i32* @ASN1_R_INVALID_OBJECT_ENCODING, align 4
  %94 = call i32 @ASN1err(i32 %92, i32 %93)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %200

95:                                               ; preds = %84, %76
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  br label %72

101:                                              ; preds = %72
  %102 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %103 = icmp eq %struct.TYPE_8__** %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = icmp eq %struct.TYPE_8__* %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %108, %104, %101
  %117 = call %struct.TYPE_8__* (...) @ASN1_OBJECT_new()
  store %struct.TYPE_8__* %117, %struct.TYPE_8__** %8, align 8
  %118 = icmp eq %struct.TYPE_8__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %200

120:                                              ; preds = %116
  br label %124

121:                                              ; preds = %108
  %122 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %8, align 8
  br label %124

124:                                              ; preds = %121, %120
  %125 = load i8**, i8*** %6, align 8
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %10, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %11, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i8* null, i8** %131, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %124
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %134, %124
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  store i32 0, i32* %142, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @OPENSSL_free(i8* %143)
  %145 = load i32, i32* %13, align 4
  %146 = call i8* @OPENSSL_malloc(i32 %145)
  store i8* %146, i8** %11, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  store i32 %150, i32* %12, align 4
  br label %185

151:                                              ; preds = %140
  %152 = load i32, i32* @ASN1_OBJECT_FLAG_DYNAMIC_DATA, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %134
  %158 = load i8*, i8** %11, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @memcpy(i8* %158, i8* %159, i32 %160)
  %162 = load i8*, i8** %11, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  store i32* null, i32** %169, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 4
  store i32* null, i32** %171, align 8
  %172 = load i32, i32* %13, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %10, align 8
  %176 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %177 = icmp ne %struct.TYPE_8__** %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %157
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %180 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %179, %struct.TYPE_8__** %180, align 8
  br label %181

181:                                              ; preds = %178, %157
  %182 = load i8*, i8** %10, align 8
  %183 = load i8**, i8*** %6, align 8
  store i8* %182, i8** %183, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %184, %struct.TYPE_8__** %4, align 8
  br label %200

185:                                              ; preds = %149
  %186 = load i32, i32* @ASN1_F_C2I_ASN1_OBJECT, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @ASN1err(i32 %186, i32 %187)
  %189 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %190 = icmp eq %struct.TYPE_8__** %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %185
  %192 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %195 = icmp ne %struct.TYPE_8__* %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %191, %185
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %198 = call i32 @ASN1_OBJECT_free(%struct.TYPE_8__* %197)
  br label %199

199:                                              ; preds = %196, %191
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %200

200:                                              ; preds = %199, %181, %119, %91, %65, %36
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %201
}

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @OBJ_obj2nid(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @OBJ_nid2obj(i32) #1

declare dso_local i32 @ASN1_OBJECT_free(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @ASN1_OBJECT_new(...) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
