; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_makeDHCPMSG.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_makeDHCPMSG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64*, i64*, i8**, i64*, i64*, i64*, i64*, i32, i32, i32, i32, i32, i32, i32 }

@DHCP_BOOTREQUEST = common dso_local global i32 0, align 4
@pDHCPMSG = common dso_local global %struct.TYPE_2__* null, align 8
@DHCP_HTYPE10MB = common dso_local global i32 0, align 4
@DHCP_HLENETHERNET = common dso_local global i32 0, align 4
@DHCP_HOPS = common dso_local global i32 0, align 4
@DHCP_XID = common dso_local global i32 0, align 4
@DHCP_SECS = common dso_local global i32 0, align 4
@DHCP_FLAGSBROADCAST = common dso_local global i32 0, align 4
@DHCP_CHADDR = common dso_local global i8** null, align 8
@MAGIC_COOKIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeDHCPMSG() #0 {
  %1 = alloca [6 x i32], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %5 = call i32 @getSHAR(i32* %4)
  %6 = load i32, i32* @DHCP_BOOTREQUEST, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 14
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @DHCP_HTYPE10MB, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @DHCP_HLENETHERNET, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @DHCP_HOPS, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 10
  store i32* %19, i32** %2, align 8
  %20 = load i32, i32* @DHCP_XID, align 4
  %21 = and i32 %20, -16777216
  %22 = lshr i32 %21, 24
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @DHCP_XID, align 4
  %26 = and i32 %25, 16711680
  %27 = ashr i32 %26, 16
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DHCP_XID, align 4
  %31 = and i32 %30, 65280
  %32 = ashr i32 %31, 8
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DHCP_XID, align 4
  %36 = and i32 %35, 255
  %37 = ashr i32 %36, 0
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @DHCP_SECS, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 8
  store i32* %44, i32** %2, align 8
  %45 = load i32, i32* @DHCP_FLAGSBROADCAST, align 4
  %46 = and i32 %45, 65280
  %47 = ashr i32 %46, 8
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @DHCP_FLAGSBROADCAST, align 4
  %51 = and i32 %50, 255
  %52 = ashr i32 %51, 0
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 7
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 7
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 7
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 5
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 4
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 4
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 3
  store i64 0, i64* %118, align 8
  %119 = load i8**, i8*** @DHCP_CHADDR, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  store i8* %121, i8** %125, align 8
  %126 = load i8**, i8*** @DHCP_CHADDR, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  store i8* %128, i8** %132, align 8
  %133 = load i8**, i8*** @DHCP_CHADDR, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 2
  store i8* %135, i8** %139, align 8
  %140 = load i8**, i8*** @DHCP_CHADDR, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 3
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 3
  store i8* %142, i8** %146, align 8
  %147 = load i8**, i8*** @DHCP_CHADDR, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 4
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 4
  store i8* %149, i8** %153, align 8
  %154 = load i8**, i8*** @DHCP_CHADDR, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 5
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i8**, i8*** %158, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 5
  store i8* %156, i8** %160, align 8
  store i32 6, i32* %3, align 4
  br label %161

161:                                              ; preds = %171, %0
  %162 = load i32, i32* %3, align 4
  %163 = icmp slt i32 %162, 16
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i8**, i8*** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* null, i8** %170, align 8
  br label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %3, align 4
  br label %161

174:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %185, %174
  %176 = load i32, i32* %3, align 4
  %177 = icmp slt i32 %176, 64
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64 0, i64* %184, align 8
  br label %185

185:                                              ; preds = %178
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %175

188:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %199, %188
  %190 = load i32, i32* %3, align 4
  %191 = icmp slt i32 %190, 128
  br i1 %191, label %192, label %202

192:                                              ; preds = %189
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %3, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %3, align 4
  br label %189

202:                                              ; preds = %189
  %203 = load i32, i32* @MAGIC_COOKIE, align 4
  %204 = and i32 %203, -16777216
  %205 = lshr i32 %204, 24
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 %205, i32* %209, align 4
  %210 = load i32, i32* @MAGIC_COOKIE, align 4
  %211 = and i32 %210, 16711680
  %212 = ashr i32 %211, 16
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* @MAGIC_COOKIE, align 4
  %218 = and i32 %217, 65280
  %219 = ashr i32 %218, 8
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  store i32 %219, i32* %223, align 4
  %224 = load i32, i32* @MAGIC_COOKIE, align 4
  %225 = and i32 %224, 255
  %226 = ashr i32 %225, 0
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pDHCPMSG, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  store i32 %226, i32* %230, align 4
  ret void
}

declare dso_local i32 @getSHAR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
