; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubkey.c_process_secret_key.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-pubkey.c_process_secret_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@HIDE_SHA1 = common dso_local global i32 0, align 4
@HIDE_CKSUM = common dso_local global i32 0, align 4
@PXE_PGP_NEED_SECRET_PSW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unknown cipher algo=%d\00", align 1
@PXE_PGP_UNSUPPORTED_CIPHER = common dso_local global i32 0, align 4
@pgp_decrypt_filter = common dso_local global i32 0, align 4
@HIDE_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown hide type\00", align 1
@PXE_PGP_KEYPKT_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"unknown public algo: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_19__**, i32*, i32)* @process_secret_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_secret_key(i32* %0, %struct.TYPE_19__** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [512 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__, align 4
  %19 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %17, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @_pgp_read_public_key(i32* %20, %struct.TYPE_19__** %19)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %221

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @GETBYTE(i32* %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @HIDE_SHA1, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @HIDE_CKSUM, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %101

37:                                               ; preds = %33, %26
  %38 = load i32*, i32** %8, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @PXE_PGP_NEED_SECRET_PSW, align 4
  store i32 %41, i32* %5, align 4
  br label %221

42:                                               ; preds = %37
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @GETBYTE(i32* %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @pgp_s2k_read(i32* %46, %struct.TYPE_18__* %18)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %221

52:                                               ; preds = %42
  %53 = load i32, i32* %12, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @pgp_s2k_process(%struct.TYPE_18__* %18, i32 %53, i32* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %221

61:                                               ; preds = %52
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @pgp_get_cipher_block_size(i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @PXE_PGP_UNSUPPORTED_CIPHER, align 4
  store i32 %69, i32* %5, align 4
  br label %221

70:                                               ; preds = %61
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %74 = call i32 @pullf_read_fixed(i32* %71, i32 %72, i32* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %221

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [512 x i32], [512 x i32]* %14, i64 0, i64 0
  %86 = call i32 @pgp_cfb_create(i32** %17, i32 %80, i32 %82, i32 %84, i32 0, i32* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %221

91:                                               ; preds = %79
  %92 = load i32*, i32** %17, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @pullf_create(i32** %15, i32* @pgp_decrypt_filter, i32* %92, i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %221

99:                                               ; preds = %91
  %100 = load i32*, i32** %15, align 8
  store i32* %100, i32** %16, align 8
  br label %111

101:                                              ; preds = %33
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @HIDE_CLEAR, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32*, i32** %6, align 8
  store i32* %106, i32** %16, align 8
  br label %110

107:                                              ; preds = %101
  %108 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @PXE_PGP_KEYPKT_CORRUPT, align 4
  store i32 %109, i32* %5, align 4
  br label %221

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %99
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %170 [
    i32 128, label %115
    i32 130, label %115
    i32 129, label %115
    i32 131, label %156
    i32 132, label %163
  ]

115:                                              ; preds = %111, %111, %111
  %116 = load i32*, i32** %16, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 3
  %121 = call i32 @pgp_mpi_read(i32* %116, i32* %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %176

125:                                              ; preds = %115
  %126 = load i32*, i32** %16, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = call i32 @pgp_mpi_read(i32* %126, i32* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %176

135:                                              ; preds = %125
  %136 = load i32*, i32** %16, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = call i32 @pgp_mpi_read(i32* %136, i32* %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %176

145:                                              ; preds = %135
  %146 = load i32*, i32** %16, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = call i32 @pgp_mpi_read(i32* %146, i32* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %176

155:                                              ; preds = %145
  br label %176

156:                                              ; preds = %111
  %157 = load i32*, i32** %16, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = call i32 @pgp_mpi_read(i32* %157, i32* %161)
  store i32 %162, i32* %10, align 4
  br label %176

163:                                              ; preds = %111
  %164 = load i32*, i32** %16, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = call i32 @pgp_mpi_read(i32* %164, i32* %168)
  store i32 %169, i32* %10, align 4
  br label %176

170:                                              ; preds = %111
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, ...) @px_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @PXE_PGP_KEYPKT_CORRUPT, align 4
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %170, %163, %156, %155, %154, %144, %134, %124
  %177 = load i32, i32* %10, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @HIDE_SHA1, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i32*, i32** %16, align 8
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %186 = call i32 @check_key_sha1(i32* %184, %struct.TYPE_19__* %185)
  store i32 %186, i32* %10, align 4
  br label %191

187:                                              ; preds = %179
  %188 = load i32*, i32** %16, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %190 = call i32 @check_key_cksum(i32* %188, %struct.TYPE_19__* %189)
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %187, %183
  br label %192

192:                                              ; preds = %191, %176
  %193 = load i32, i32* %10, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32*, i32** %16, align 8
  %197 = call i32 @pgp_expect_packet_end(i32* %196)
  store i32 %197, i32* %10, align 4
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32*, i32** %15, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32*, i32** %15, align 8
  %203 = call i32 @pullf_free(i32* %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32*, i32** %17, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32*, i32** %17, align 8
  %209 = call i32 @pgp_cfb_free(i32* %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* %10, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %215 = call i32 @pgp_key_free(%struct.TYPE_19__* %214)
  br label %219

216:                                              ; preds = %210
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %218 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_19__* %217, %struct.TYPE_19__** %218, align 8
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %219, %107, %97, %89, %77, %66, %59, %50, %40, %24
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i32 @_pgp_read_public_key(i32*, %struct.TYPE_19__**) #1

declare dso_local i32 @GETBYTE(i32*, i32) #1

declare dso_local i32 @pgp_s2k_read(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @pgp_s2k_process(%struct.TYPE_18__*, i32, i32*, i32) #1

declare dso_local i32 @pgp_get_cipher_block_size(i32) #1

declare dso_local i32 @px_debug(i8*, ...) #1

declare dso_local i32 @pullf_read_fixed(i32*, i32, i32*) #1

declare dso_local i32 @pgp_cfb_create(i32**, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pullf_create(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @pgp_mpi_read(i32*, i32*) #1

declare dso_local i32 @check_key_sha1(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @check_key_cksum(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @pgp_expect_packet_end(i32*) #1

declare dso_local i32 @pullf_free(i32*) #1

declare dso_local i32 @pgp_cfb_free(i32*) #1

declare dso_local i32 @pgp_key_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
