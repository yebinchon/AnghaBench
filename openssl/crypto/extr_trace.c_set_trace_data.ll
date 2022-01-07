; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_trace.c_set_trace_data.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_trace.c_set_trace_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i32 }

@trace_inited = common dso_local global i32 0, align 4
@ossl_trace_init = common dso_local global i32 0, align 4
@trace_channels = common dso_local global %struct.TYPE_2__* null, align 8
@PREFIX = common dso_local global i32 0, align 4
@SUFFIX = common dso_local global i32 0, align 4
@CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**, i8**, i8**, i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)*)* @set_trace_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_trace_data(i32 %0, i32 %1, i8** %2, i8** %3, i8** %4, i32 (i32, i32, i8*)* %5, i32 (i32, i32, i8*)* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32 (i32, i32, i8*)*, align 8
  %15 = alloca i32 (i32, i32, i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32 (i32, i32, i8*)* %5, i32 (i32, i32, i8*)** %14, align 8
  store i32 (i32, i32, i8*)* %6, i32 (i32, i32, i8*)** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %19 = load i32, i32* @ossl_trace_init, align 4
  %20 = call i32 @RUN_ONCE(i32* @trace_inited, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %228

23:                                               ; preds = %7
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %16, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %17, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %18, align 8
  %42 = load i8**, i8*** %12, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %23
  %45 = load i8*, i8** %17, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %15, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @PREFIX, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 %48(i32 %49, i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %47, %44, %23
  %54 = load i8**, i8*** %13, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i8*, i8** %18, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %15, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SUFFIX, align 4
  %63 = load i8*, i8** %18, align 8
  %64 = call i32 %60(i32 %61, i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %59, %56, %53
  %66 = load i8**, i8*** %11, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8*, i8** %16, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %15, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @CHANNEL, align 4
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 %72(i32 %73, i32 %74, i8* %75)
  br label %77

77:                                               ; preds = %71, %68, %65
  %78 = load i8**, i8*** %12, align 8
  %79 = icmp ne i8** %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i8*, i8** %17, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8*, i8** %17, align 8
  %85 = call i32 @OPENSSL_free(i8* %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i8* null, i8** %90, align 8
  br label %91

91:                                               ; preds = %83, %80, %77
  %92 = load i8**, i8*** %13, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i8*, i8** %18, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i8*, i8** %18, align 8
  %99 = call i32 @OPENSSL_free(i8* %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i8* null, i8** %104, align 8
  br label %105

105:                                              ; preds = %97, %94, %91
  %106 = load i8**, i8*** %11, align 8
  %107 = icmp ne i8** %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load i8*, i8** %16, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load i8*, i8** %16, align 8
  %113 = call i32 @BIO_free(i8* %112)
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  store i32 0, i32* %118, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i8* null, i8** %123, align 8
  br label %124

124:                                              ; preds = %111, %108, %105
  %125 = load i8**, i8*** %11, align 8
  %126 = icmp ne i8** %125, null
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load i8**, i8*** %11, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  store i32 %132, i32* %137, align 8
  %138 = load i8**, i8*** %11, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i8* %139, i8** %144, align 8
  br label %145

145:                                              ; preds = %131, %127, %124
  %146 = load i8**, i8*** %12, align 8
  %147 = icmp ne i8** %146, null
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = load i8**, i8*** %12, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %165

152:                                              ; preds = %148
  %153 = load i8**, i8*** %12, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @OPENSSL_strdup(i8* %154)
  store i8* %155, i8** %17, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 0, i32* %8, align 4
  br label %228

158:                                              ; preds = %152
  %159 = load i8*, i8** %17, align 8
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store i8* %159, i8** %164, align 8
  br label %165

165:                                              ; preds = %158, %148, %145
  %166 = load i8**, i8*** %13, align 8
  %167 = icmp ne i8** %166, null
  br i1 %167, label %168, label %185

168:                                              ; preds = %165
  %169 = load i8**, i8*** %13, align 8
  %170 = load i8*, i8** %169, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i8**, i8*** %13, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @OPENSSL_strdup(i8* %174)
  store i8* %175, i8** %18, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 0, i32* %8, align 4
  br label %228

178:                                              ; preds = %172
  %179 = load i8*, i8** %18, align 8
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_channels, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 2
  store i8* %179, i8** %184, align 8
  br label %185

185:                                              ; preds = %178, %168, %165
  %186 = load i8**, i8*** %11, align 8
  %187 = icmp ne i8** %186, null
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load i8**, i8*** %11, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %14, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @CHANNEL, align 4
  %196 = load i8**, i8*** %11, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 %193(i32 %194, i32 %195, i8* %197)
  br label %199

199:                                              ; preds = %192, %188, %185
  %200 = load i8**, i8*** %12, align 8
  %201 = icmp ne i8** %200, null
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = load i8**, i8*** %12, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %213

206:                                              ; preds = %202
  %207 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %14, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @PREFIX, align 4
  %210 = load i8**, i8*** %12, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 %207(i32 %208, i32 %209, i8* %211)
  br label %213

213:                                              ; preds = %206, %202, %199
  %214 = load i8**, i8*** %13, align 8
  %215 = icmp ne i8** %214, null
  br i1 %215, label %216, label %227

216:                                              ; preds = %213
  %217 = load i8**, i8*** %13, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %14, align 8
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @SUFFIX, align 4
  %224 = load i8**, i8*** %13, align 8
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 %221(i32 %222, i32 %223, i8* %225)
  br label %227

227:                                              ; preds = %220, %216, %213
  store i32 1, i32* %8, align 4
  br label %228

228:                                              ; preds = %227, %177, %157, %22
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BIO_free(i8*) #1

declare dso_local i8* @OPENSSL_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
