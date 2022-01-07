; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_out_mcs_data.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_secure.c_sec_out_mcs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@g_hostname = common dso_local global i32 0, align 4
@g_num_channels = common dso_local global i32 0, align 4
@SEC_TAG_CLI_INFO = common dso_local global i32 0, align 4
@g_rdp_version = common dso_local global i64 0, align 8
@RDP_V5 = common dso_local global i64 0, align 8
@g_width = common dso_local global i32 0, align 4
@g_height = common dso_local global i32 0, align 4
@g_keylayout = common dso_local global i32 0, align 4
@g_keyboard_type = common dso_local global i32 0, align 4
@g_keyboard_subtype = common dso_local global i32 0, align 4
@g_keyboard_functionkeys = common dso_local global i32 0, align 4
@g_server_depth = common dso_local global i32 0, align 4
@SEC_TAG_CLI_CLUSTER = common dso_local global i32 0, align 4
@SEC_CC_REDIRECTION_SUPPORTED = common dso_local global i32 0, align 4
@SEC_CC_REDIRECT_VERSION_3 = common dso_local global i32 0, align 4
@g_console_session = common dso_local global i64 0, align 8
@g_redirect_session_id = common dso_local global i64 0, align 8
@SEC_CC_REDIRECT_SESSIONID_FIELD_VALID = common dso_local global i32 0, align 4
@SEC_TAG_CLI_CRYPT = common dso_local global i32 0, align 4
@g_encryption = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"g_num_channels is %d\0A\00", align 1
@SEC_TAG_CLI_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Requesting channel %s\0A\00", align 1
@g_channels = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @sec_out_mcs_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_out_mcs_data(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @g_hostname, align 4
  %10 = call i32 @strlen(i32 %9)
  %11 = mul nsw i32 2, %10
  store i32 %11, i32* %5, align 4
  store i32 254, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @g_num_channels, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @g_num_channels, align 4
  %16 = mul nsw i32 %15, 12
  %17 = add nsw i32 %16, 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 30
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 30, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @out_uint16_be(i32 %25, i32 5)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @out_uint16_be(i32 %27, i32 20)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @out_uint8(i32 %29, i32 124)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @out_uint16_be(i32 %31, i32 1)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 32768
  %36 = call i32 @out_uint16_be(i32 %33, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @out_uint16_be(i32 %37, i32 8)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @out_uint16_be(i32 %39, i32 16)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @out_uint8(i32 %41, i32 0)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @out_uint16_le(i32 %43, i32 49153)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @out_uint8(i32 %45, i32 0)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @out_uint32_le(i32 %47, i32 1633908036)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 14
  %52 = or i32 %51, 32768
  %53 = call i32 @out_uint16_be(i32 %49, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SEC_TAG_CLI_INFO, align 4
  %56 = call i32 @out_uint16_le(i32 %54, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @out_uint16_le(i32 %57, i32 216)
  %59 = load i32, i32* %3, align 4
  %60 = load i64, i64* @g_rdp_version, align 8
  %61 = load i64, i64* @RDP_V5, align 8
  %62 = icmp sge i64 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 4, i32 1
  %65 = call i32 @out_uint16_le(i32 %59, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @out_uint16_le(i32 %66, i32 8)
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @g_width, align 4
  %70 = call i32 @out_uint16_le(i32 %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @g_height, align 4
  %73 = call i32 @out_uint16_le(i32 %71, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @out_uint16_le(i32 %74, i32 51713)
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @out_uint16_le(i32 %76, i32 43523)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @g_keylayout, align 4
  %80 = call i32 @out_uint32_le(i32 %78, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @out_uint32_le(i32 %81, i32 2600)
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @g_hostname, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @rdp_out_unistr(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 30, %88
  %90 = call i32 @out_uint8s(i32 %87, i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @g_keyboard_type, align 4
  %93 = call i32 @out_uint32_le(i32 %91, i32 %92)
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @g_keyboard_subtype, align 4
  %96 = call i32 @out_uint32_le(i32 %94, i32 %95)
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @g_keyboard_functionkeys, align 4
  %99 = call i32 @out_uint32_le(i32 %97, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @out_uint8s(i32 %100, i32 64)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @out_uint16_le(i32 %102, i32 51713)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @out_uint16_le(i32 %104, i32 1)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @out_uint32(i32 %106, i64 0)
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @g_server_depth, align 4
  %110 = call i32 @out_uint8(i32 %108, i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @out_uint16_le(i32 %111, i32 1792)
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @out_uint8(i32 %113, i32 0)
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @out_uint32_le(i32 %115, i32 1)
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @out_uint8s(i32 %117, i32 64)
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @out_uint32_le(i32 %119, i32 %120)
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @SEC_TAG_CLI_CLUSTER, align 4
  %124 = call i32 @out_uint16_le(i32 %122, i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @out_uint16_le(i32 %125, i32 12)
  %127 = load i32, i32* @SEC_CC_REDIRECTION_SUPPORTED, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @SEC_CC_REDIRECT_VERSION_3, align 4
  %131 = shl i32 %130, 2
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i64, i64* @g_console_session, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %24
  %137 = load i64, i64* @g_redirect_session_id, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136, %24
  %140 = load i32, i32* @SEC_CC_REDIRECT_SESSIONID_FIELD_VALID, align 4
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %139, %136
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @out_uint32_le(i32 %144, i32 %145)
  %147 = load i32, i32* %3, align 4
  %148 = load i64, i64* @g_redirect_session_id, align 8
  %149 = call i32 @out_uint32(i32 %147, i64 %148)
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @SEC_TAG_CLI_CRYPT, align 4
  %152 = call i32 @out_uint16_le(i32 %150, i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @out_uint16_le(i32 %153, i32 12)
  %155 = load i32, i32* %3, align 4
  %156 = load i64, i64* @g_encryption, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 3, i32 0
  %160 = call i32 @out_uint32_le(i32 %155, i32 %159)
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @out_uint32(i32 %161, i64 0)
  %163 = load i32, i32* @g_num_channels, align 4
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = call i32 @DEBUG_RDP5(i8* %165)
  %167 = load i32, i32* @g_num_channels, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %215

169:                                              ; preds = %143
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @SEC_TAG_CLI_CHANNELS, align 4
  %172 = call i32 @out_uint16_le(i32 %170, i32 %171)
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @g_num_channels, align 4
  %175 = mul nsw i32 %174, 12
  %176 = add nsw i32 %175, 8
  %177 = call i32 @out_uint16_le(i32 %173, i32 %176)
  %178 = load i32, i32* %3, align 4
  %179 = load i32, i32* @g_num_channels, align 4
  %180 = call i32 @out_uint32_le(i32 %178, i32 %179)
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %211, %169
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @g_num_channels, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %214

185:                                              ; preds = %181
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_channels, align 8
  %187 = load i32, i32* %7, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to i8*
  %194 = call i32 @DEBUG_RDP5(i8* %193)
  %195 = load i32, i32* %3, align 4
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_channels, align 8
  %197 = load i32, i32* %7, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @out_uint8a(i32 %195, i32 %201, i32 8)
  %203 = load i32, i32* %3, align 4
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_channels, align 8
  %205 = load i32, i32* %7, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @out_uint32_be(i32 %203, i32 %209)
  br label %211

211:                                              ; preds = %185
  %212 = load i32, i32* %7, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %181

214:                                              ; preds = %181
  br label %215

215:                                              ; preds = %214, %143
  %216 = load i32, i32* %3, align 4
  %217 = call i32 @s_mark_end(i32 %216)
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @out_uint16_be(i32, i32) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @rdp_out_unistr(i32, i32, i32) #1

declare dso_local i32 @out_uint8s(i32, i32) #1

declare dso_local i32 @out_uint32(i32, i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32 @out_uint8a(i32, i32, i32) #1

declare dso_local i32 @out_uint32_be(i32, i32) #1

declare dso_local i32 @s_mark_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
