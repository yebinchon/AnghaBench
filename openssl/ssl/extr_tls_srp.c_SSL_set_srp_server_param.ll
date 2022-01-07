; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_SSL_set_srp_server_param.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_tls_srp.c_SSL_set_srp_server_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_set_srp_server_param(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %6
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @BN_copy(i32* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @BN_free(i32* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %22
  br label %47

40:                                               ; preds = %16
  %41 = load i32*, i32** %9, align 8
  %42 = call i8* @BN_dup(i32* %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32* %43, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %39
  br label %48

48:                                               ; preds = %47, %6
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @BN_copy(i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @BN_free(i32* %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %65, %57
  br label %82

75:                                               ; preds = %51
  %76 = load i32*, i32** %10, align 8
  %77 = call i8* @BN_dup(i32* %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32* %78, i32** %81, align 8
  br label %82

82:                                               ; preds = %75, %74
  br label %83

83:                                               ; preds = %82, %48
  %84 = load i32*, i32** %11, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %118

86:                                               ; preds = %83
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @BN_copy(i32* %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %92
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @BN_free(i32* %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %100, %92
  br label %117

110:                                              ; preds = %86
  %111 = load i32*, i32** %11, align 8
  %112 = call i8* @BN_dup(i32* %111)
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32* %113, i32** %116, align 8
  br label %117

117:                                              ; preds = %110, %109
  br label %118

118:                                              ; preds = %117, %83
  %119 = load i32*, i32** %12, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %153

121:                                              ; preds = %118
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %145

127:                                              ; preds = %121
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @BN_copy(i32* %131, i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %127
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @BN_free(i32* %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %135, %127
  br label %152

145:                                              ; preds = %121
  %146 = load i32*, i32** %12, align 8
  %147 = call i8* @BN_dup(i32* %146)
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32* %148, i32** %151, align 8
  br label %152

152:                                              ; preds = %145, %144
  br label %153

153:                                              ; preds = %152, %118
  %154 = load i8*, i8** %13, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %177

156:                                              ; preds = %153
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @OPENSSL_free(i32* %166)
  br label %168

168:                                              ; preds = %162, %156
  %169 = load i8*, i8** %13, align 8
  %170 = call i32* @OPENSSL_strdup(i8* %169)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 4
  store i32* %170, i32** %173, align 8
  %174 = icmp eq i32* %170, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 -1, i32* %7, align 4
  br label %203

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %153
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %201

183:                                              ; preds = %177
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %201

189:                                              ; preds = %183
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %195, %189, %183, %177
  store i32 -1, i32* %7, align 4
  br label %203

202:                                              ; preds = %195
  store i32 1, i32* %7, align 4
  br label %203

203:                                              ; preds = %202, %201, %175
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i8* @BN_dup(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
