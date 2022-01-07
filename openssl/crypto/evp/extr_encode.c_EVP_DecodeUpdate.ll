; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_encode.c_EVP_DecodeUpdate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_encode.c_EVP_DecodeUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@EVP_ENCODE_CTX_USE_SRP_ALPHABET = common dso_local global i32 0, align 4
@srpdata_ascii2bin = common dso_local global i8* null, align 8
@data_ascii2bin = common dso_local global i8* null, align 8
@B64_ERROR = common dso_local global i32 0, align 4
@B64_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_DecodeUpdate(%struct.TYPE_4__* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %18, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %20, align 8
  %28 = load i32, i32* %18, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %5
  %31 = load i8*, i8** %20, align 8
  %32 = load i32, i32* %18, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 61
  br i1 %38, label %39, label %57

39:                                               ; preds = %30
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i8*, i8** %20, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sub nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 61
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %44, %39
  br label %57

57:                                               ; preds = %56, %30, %5
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %213

61:                                               ; preds = %57
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @EVP_ENCODE_CTX_USE_SRP_ALPHABET, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i8*, i8** @srpdata_ascii2bin, align 8
  store i8* %69, i8** %21, align 8
  br label %72

70:                                               ; preds = %61
  %71 = load i8*, i8** @data_ascii2bin, align 8
  store i8* %71, i8** %21, align 8
  br label %72

72:                                               ; preds = %70, %68
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %162, %72
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %165

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  %80 = load i8, i8* %78, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i8*, i8** %21, align 8
  %84 = call i32 @conv_ascii2bin(i32 %82, i8* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @B64_ERROR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 -1, i32* %13, align 4
  br label %213

89:                                               ; preds = %77
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 61
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %104

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4
  %100 = call i64 @B64_BASE64(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 -1, i32* %13, align 4
  br label %213

103:                                              ; preds = %98, %95
  br label %104

104:                                              ; preds = %103, %92
  %105 = load i32, i32* %12, align 4
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 -1, i32* %13, align 4
  br label %213

108:                                              ; preds = %104
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @B64_EOF, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 1, i32* %11, align 4
  br label %166

113:                                              ; preds = %108
  %114 = load i32, i32* %16, align 4
  %115 = call i64 @B64_BASE64(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %113
  %118 = load i32, i32* %18, align 4
  %119 = icmp sge i32 %118, 64
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 -1, i32* %13, align 4
  br label %213

121:                                              ; preds = %117
  %122 = load i32, i32* %18, align 4
  %123 = icmp slt i32 %122, 8
  %124 = zext i1 %123 to i32
  %125 = call i32 @OPENSSL_assert(i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %20, align 8
  %129 = load i32, i32* %18, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %18, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  store i8 %127, i8* %132, align 1
  br label %133

133:                                              ; preds = %121, %113
  %134 = load i32, i32* %18, align 4
  %135 = icmp eq i32 %134, 64
  br i1 %135, label %136, label %161

136:                                              ; preds = %133
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = load i8*, i8** %20, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @evp_decodeblock_int(%struct.TYPE_4__* %137, i8* %138, i8* %139, i32 %140)
  store i32 %141, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %142 = load i32, i32* %19, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144, %136
  store i32 -1, i32* %13, align 4
  br label %213

149:                                              ; preds = %144
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %12, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i8*, i8** %7, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %7, align 8
  br label %161

161:                                              ; preds = %149, %133
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %73

165:                                              ; preds = %73
  br label %166

166:                                              ; preds = %165, %112
  %167 = load i32, i32* %18, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %198

169:                                              ; preds = %166
  %170 = load i32, i32* %18, align 4
  %171 = and i32 %170, 3
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %192

173:                                              ; preds = %169
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = load i8*, i8** %20, align 8
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @evp_decodeblock_int(%struct.TYPE_4__* %174, i8* %175, i8* %176, i32 %177)
  store i32 %178, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %179 = load i32, i32* %19, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %19, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181, %173
  store i32 -1, i32* %13, align 4
  br label %213

186:                                              ; preds = %181
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %12, align 4
  %189 = sub nsw i32 %187, %188
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %14, align 4
  br label %197

192:                                              ; preds = %169
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 -1, i32* %13, align 4
  br label %213

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196, %186
  br label %198

198:                                              ; preds = %197, %166
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %209, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %18, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br label %207

207:                                              ; preds = %204, %201
  %208 = phi i1 [ false, %201 ], [ %206, %204 ]
  br label %209

209:                                              ; preds = %207, %198
  %210 = phi i1 [ true, %198 ], [ %208, %207 ]
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 0, i32 1
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %209, %195, %185, %148, %120, %107, %102, %88, %60
  %214 = load i32, i32* %14, align 4
  %215 = load i32*, i32** %8, align 8
  store i32 %214, i32* %215, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %13, align 4
  ret i32 %219
}

declare dso_local i32 @conv_ascii2bin(i32, i8*) #1

declare dso_local i64 @B64_BASE64(i32) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @evp_decodeblock_int(%struct.TYPE_4__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
