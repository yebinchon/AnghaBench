; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_s390x_nistp.c_ec_GFp_s390x_nistp_mul.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_s390x_nistp.c_ec_GFp_s390x_nistp_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)* }

@S390X_SIZE_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32*, i64, i32**, i32**, i32*, i32, i32)* @ec_GFp_s390x_nistp_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_GFp_s390x_nistp_mul(%struct.TYPE_11__* %0, i32* %1, i32* %2, i64 %3, i32** %4, i32** %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32** %4, i32*** %15, align 8
  store i32** %5, i32*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %29 = load i32, i32* @S390X_SIZE_PARAM, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %20, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %21, align 8
  store i32* null, i32** %24, align 8
  store i32* null, i32** %25, align 8
  store i32* null, i32** %26, align 8
  store i32 -1, i32* %27, align 4
  %33 = load i32*, i32** %17, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %9
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @BN_CTX_new_ex(i32 %38)
  store i32* %39, i32** %26, align 8
  store i32* %39, i32** %17, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  store i32 1, i32* %28, align 4
  br label %211

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %9
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @BN_CTX_start(i32* %45)
  %47 = load i32*, i32** %17, align 8
  %48 = call i32* @BN_CTX_get(i32* %47)
  store i32* %48, i32** %22, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = call i32* @BN_CTX_get(i32* %49)
  store i32* %50, i32** %23, align 8
  %51 = load i32*, i32** %22, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32*, i32** %23, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %44
  store i32 0, i32* %27, align 4
  br label %187

57:                                               ; preds = %53
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i64, i64* %14, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32*, i32** %13, align 8
  %65 = call i64 @BN_is_negative(i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %63, %60, %57
  %68 = load i32*, i32** %13, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %186

70:                                               ; preds = %67
  %71 = load i64, i64* %14, align 8
  %72 = icmp eq i64 %71, 1
  br i1 %72, label %73, label %186

73:                                               ; preds = %70
  %74 = load i32**, i32*** %16, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @BN_is_negative(i32* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %186

79:                                               ; preds = %73, %63
  %80 = load i64, i64* %14, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %84 = call i32* @EC_GROUP_get0_generator(%struct.TYPE_11__* %83)
  store i32* %84, i32** %24, align 8
  %85 = load i32*, i32** %13, align 8
  store i32* %85, i32** %25, align 8
  br label %93

86:                                               ; preds = %79
  %87 = load i32**, i32*** %15, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %24, align 8
  %90 = load i32**, i32*** %16, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %25, align 8
  br label %93

93:                                               ; preds = %86, %82
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = load i32*, i32** %24, align 8
  %96 = call i32 @EC_POINT_is_at_infinity(%struct.TYPE_11__* %94, i32* %95)
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32*, i32** %25, align 8
  %100 = call i64 @BN_is_zero(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98, %93
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_11__* %103, i32* %104)
  store i32 %105, i32* %27, align 4
  br label %187

106:                                              ; preds = %98
  %107 = bitcast i8* %32 to i8**
  %108 = trunc i64 %30 to i32
  %109 = call i32 @memset(i8** %107, i32 0, i32 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)** %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %116 = load i32*, i32** %24, align 8
  %117 = load i32*, i32** %22, align 8
  %118 = load i32*, i32** %23, align 8
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 %114(%struct.TYPE_11__* %115, i32* %116, i32* %117, i32* %118, i32* %119)
  %121 = icmp ne i32 %120, 1
  br i1 %121, label %184, label %122

122:                                              ; preds = %106
  %123 = load i32*, i32** %22, align 8
  %124 = load i32, i32* %19, align 4
  %125 = call i32 @S390X_OFF_SRC_X(i32 %124)
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %32, i64 %126
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @BN_bn2binpad(i32* %123, i8* %127, i32 %128)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %184, label %131

131:                                              ; preds = %122
  %132 = load i32*, i32** %23, align 8
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @S390X_OFF_SRC_Y(i32 %133)
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %32, i64 %135
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @BN_bn2binpad(i32* %132, i8* %136, i32 %137)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %184, label %140

140:                                              ; preds = %131
  %141 = load i32*, i32** %25, align 8
  %142 = load i32, i32* %19, align 4
  %143 = call i32 @S390X_OFF_SCALAR(i32 %142)
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %32, i64 %144
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @BN_bn2binpad(i32* %141, i8* %145, i32 %146)
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %184, label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %18, align 4
  %151 = call i64 @s390x_pcc(i32 %150, i8* %32)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %184, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @S390X_OFF_RES_X(i32 %154)
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %32, i64 %156
  %158 = load i32, i32* %19, align 4
  %159 = load i32*, i32** %22, align 8
  %160 = call i32* @BN_bin2bn(i8* %157, i32 %158, i32* %159)
  %161 = icmp eq i32* %160, null
  br i1 %161, label %184, label %162

162:                                              ; preds = %153
  %163 = load i32, i32* %19, align 4
  %164 = call i32 @S390X_OFF_RES_Y(i32 %163)
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %32, i64 %165
  %167 = load i32, i32* %19, align 4
  %168 = load i32*, i32** %23, align 8
  %169 = call i32* @BN_bin2bn(i8* %166, i32 %167, i32* %168)
  %170 = icmp eq i32* %169, null
  br i1 %170, label %184, label %171

171:                                              ; preds = %162
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)** %175, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %178 = load i32*, i32** %12, align 8
  %179 = load i32*, i32** %22, align 8
  %180 = load i32*, i32** %23, align 8
  %181 = load i32*, i32** %17, align 8
  %182 = call i32 %176(%struct.TYPE_11__* %177, i32* %178, i32* %179, i32* %180, i32* %181)
  %183 = icmp ne i32 %182, 1
  br i1 %183, label %184, label %185

184:                                              ; preds = %171, %162, %153, %149, %140, %131, %122, %106
  br label %187

185:                                              ; preds = %171
  store i32 1, i32* %27, align 4
  br label %186

186:                                              ; preds = %185, %73, %70, %67
  br label %187

187:                                              ; preds = %186, %184, %102, %56
  %188 = load i32, i32* %27, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = load i32*, i32** %13, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i32**, i32*** %15, align 8
  %196 = load i32**, i32*** %16, align 8
  %197 = load i32*, i32** %17, align 8
  %198 = call i32 @ec_wNAF_mul(%struct.TYPE_11__* %191, i32* %192, i32* %193, i64 %194, i32** %195, i32** %196, i32* %197)
  store i32 %198, i32* %27, align 4
  br label %199

199:                                              ; preds = %190, %187
  %200 = load i32, i32* %19, align 4
  %201 = call i32 @S390X_OFF_SCALAR(i32 %200)
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %32, i64 %202
  %204 = load i32, i32* %19, align 4
  %205 = call i32 @OPENSSL_cleanse(i8* %203, i32 %204)
  %206 = load i32*, i32** %17, align 8
  %207 = call i32 @BN_CTX_end(i32* %206)
  %208 = load i32*, i32** %26, align 8
  %209 = call i32 @BN_CTX_free(i32* %208)
  %210 = load i32, i32* %27, align 4
  store i32 %210, i32* %10, align 4
  store i32 1, i32* %28, align 4
  br label %211

211:                                              ; preds = %199, %42
  %212 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %10, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @BN_CTX_new_ex(i32) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local i32* @BN_CTX_get(i32*) #2

declare dso_local i64 @BN_is_negative(i32*) #2

declare dso_local i32* @EC_GROUP_get0_generator(%struct.TYPE_11__*) #2

declare dso_local i32 @EC_POINT_is_at_infinity(%struct.TYPE_11__*, i32*) #2

declare dso_local i64 @BN_is_zero(i32*) #2

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i32) #2

declare dso_local i32 @S390X_OFF_SRC_X(i32) #2

declare dso_local i32 @S390X_OFF_SRC_Y(i32) #2

declare dso_local i32 @S390X_OFF_SCALAR(i32) #2

declare dso_local i64 @s390x_pcc(i32, i8*) #2

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local i32 @S390X_OFF_RES_X(i32) #2

declare dso_local i32 @S390X_OFF_RES_Y(i32) #2

declare dso_local i32 @ec_wNAF_mul(%struct.TYPE_11__*, i32*, i32*, i64, i32**, i32**, i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @BN_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
