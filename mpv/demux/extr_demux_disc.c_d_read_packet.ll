; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_d_read_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_disc.c_d_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.priv* }
%struct.priv = type { i64, i64, i64, double, i64, %struct.sh_stream**, i64, i32 }
%struct.sh_stream = type { i64, i64 }
%struct.demux_packet = type { i64, i64, i64, i64 }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"ipts: %d %f %f\0A\00", align 1
@STREAM_SUB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"subtitle packet along PTS reset\0A\00", align 1
@DTS_RESET_THRESHOLD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"PTS discontinuity: %f->%f\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"opts: %d %f %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demuxer*, %struct.demux_packet**)* @d_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_read_packet(%struct.demuxer* %0, %struct.demux_packet** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca %struct.demux_packet**, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.demux_packet*, align 8
  %8 = alloca %struct.sh_stream*, align 8
  %9 = alloca double, align 8
  store %struct.demuxer* %0, %struct.demuxer** %4, align 8
  store %struct.demux_packet** %1, %struct.demux_packet*** %5, align 8
  %10 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %11 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %6, align 8
  %13 = load %struct.priv*, %struct.priv** %6, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.demux_packet* @demux_read_any_packet(i32 %15)
  store %struct.demux_packet* %16, %struct.demux_packet** %7, align 8
  %17 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %18 = icmp ne %struct.demux_packet* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %237

20:                                               ; preds = %2
  %21 = load %struct.priv*, %struct.priv** %6, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %25 = call i32 @demux_update(i32 %23, i64 %24)
  %26 = load %struct.priv*, %struct.priv** %6, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %32 = call i32 @reset_pts(%struct.demuxer* %31)
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %35 = call i32 @add_streams(%struct.demuxer* %34)
  %36 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %37 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.priv*, %struct.priv** %6, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %45 = call i32 @talloc_free(%struct.demux_packet* %44)
  store i32 1, i32* %3, align 4
  br label %237

46:                                               ; preds = %33
  %47 = load %struct.priv*, %struct.priv** %6, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 5
  %49 = load %struct.sh_stream**, %struct.sh_stream*** %48, align 8
  %50 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %51 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sh_stream*, %struct.sh_stream** %49, i64 %52
  %54 = load %struct.sh_stream*, %struct.sh_stream** %53, align 8
  store %struct.sh_stream* %54, %struct.sh_stream** %8, align 8
  %55 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  %56 = call i32 @demux_stream_is_selected(%struct.sh_stream* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %60 = call i32 @talloc_free(%struct.demux_packet* %59)
  store i32 1, i32* %3, align 4
  br label %237

61:                                               ; preds = %46
  %62 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  %63 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %66 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.priv*, %struct.priv** %6, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %73 = load %struct.demux_packet**, %struct.demux_packet*** %5, align 8
  store %struct.demux_packet* %72, %struct.demux_packet** %73, align 8
  store i32 1, i32* %3, align 4
  br label %237

74:                                               ; preds = %61
  %75 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %76 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  %77 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %80 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %83 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @MP_TRACE(%struct.demuxer* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %81, i64 %84)
  %86 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  %87 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @STREAM_SUB, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %74
  %92 = load %struct.priv*, %struct.priv** %6, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %99 = call i32 (%struct.demuxer*, i8*, ...) @MP_WARN(%struct.demuxer* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %91
  br label %179

101:                                              ; preds = %74
  %102 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %103 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %178

107:                                              ; preds = %101
  %108 = load %struct.priv*, %struct.priv** %6, align 8
  %109 = getelementptr inbounds %struct.priv, %struct.priv* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %115 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.priv*, %struct.priv** %6, align 8
  %118 = getelementptr inbounds %struct.priv, %struct.priv* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %107
  %120 = load %struct.priv*, %struct.priv** %6, align 8
  %121 = getelementptr inbounds %struct.priv, %struct.priv* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %127 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.priv*, %struct.priv** %6, align 8
  %130 = getelementptr inbounds %struct.priv, %struct.priv* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %119
  %132 = load %struct.priv*, %struct.priv** %6, align 8
  %133 = getelementptr inbounds %struct.priv, %struct.priv* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %136 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %134, %137
  %139 = call i64 @fabs(i64 %138)
  %140 = load i64, i64* @DTS_RESET_THRESHOLD, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %131
  %143 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %144 = load %struct.priv*, %struct.priv** %6, align 8
  %145 = getelementptr inbounds %struct.priv, %struct.priv* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %148 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 (%struct.demuxer*, i8*, ...) @MP_WARN(%struct.demuxer* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %146, i64 %149)
  %151 = load %struct.priv*, %struct.priv** %6, align 8
  %152 = getelementptr inbounds %struct.priv, %struct.priv* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.priv*, %struct.priv** %6, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %153, %156
  %158 = sitofp i64 %157 to double
  %159 = load %struct.priv*, %struct.priv** %6, align 8
  %160 = getelementptr inbounds %struct.priv, %struct.priv* %159, i32 0, i32 3
  %161 = load double, double* %160, align 8
  %162 = fadd double %161, %158
  store double %162, double* %160, align 8
  %163 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %164 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %167 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %165, %168
  %170 = load %struct.priv*, %struct.priv** %6, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %142, %131
  %173 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %174 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.priv*, %struct.priv** %6, align 8
  %177 = getelementptr inbounds %struct.priv, %struct.priv* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %172, %101
  br label %179

179:                                              ; preds = %178, %100
  %180 = load %struct.priv*, %struct.priv** %6, align 8
  %181 = getelementptr inbounds %struct.priv, %struct.priv* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %223

185:                                              ; preds = %179
  %186 = load %struct.priv*, %struct.priv** %6, align 8
  %187 = getelementptr inbounds %struct.priv, %struct.priv* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 0, %188
  %190 = sitofp i64 %189 to double
  %191 = load %struct.priv*, %struct.priv** %6, align 8
  %192 = getelementptr inbounds %struct.priv, %struct.priv* %191, i32 0, i32 3
  %193 = load double, double* %192, align 8
  %194 = fadd double %190, %193
  store double %194, double* %9, align 8
  %195 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %196 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %185
  %201 = load double, double* %9, align 8
  %202 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %203 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = sitofp i64 %204 to double
  %206 = fadd double %205, %201
  %207 = fptosi double %206 to i64
  store i64 %207, i64* %203, align 8
  br label %208

208:                                              ; preds = %200, %185
  %209 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %210 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load double, double* %9, align 8
  %216 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %217 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = sitofp i64 %218 to double
  %220 = fadd double %219, %215
  %221 = fptosi double %220 to i64
  store i64 %221, i64* %217, align 8
  br label %222

222:                                              ; preds = %214, %208
  br label %223

223:                                              ; preds = %222, %179
  %224 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %225 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  %226 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %229 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %232 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @MP_TRACE(%struct.demuxer* %224, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %227, i64 %230, i64 %233)
  %235 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %236 = load %struct.demux_packet**, %struct.demux_packet*** %5, align 8
  store %struct.demux_packet* %235, %struct.demux_packet** %236, align 8
  store i32 1, i32* %3, align 4
  br label %237

237:                                              ; preds = %223, %71, %58, %43, %19
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local %struct.demux_packet* @demux_read_any_packet(i32) #1

declare dso_local i32 @demux_update(i32, i64) #1

declare dso_local i32 @reset_pts(%struct.demuxer*) #1

declare dso_local i32 @add_streams(%struct.demuxer*) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

declare dso_local i32 @demux_stream_is_selected(%struct.sh_stream*) #1

declare dso_local i32 @MP_TRACE(%struct.demuxer*, i8*, i64, i64, i64) #1

declare dso_local i32 @MP_WARN(%struct.demuxer*, i8*, ...) #1

declare dso_local i64 @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
